import 'package:bloc/bloc.dart';
import 'package:orange_fitness/data/repository/youtube_repository.dart';
import 'package:orange_fitness/ui/search/search.dart';
import 'package:orange_fitness/data/model/search/youtube_search_error.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final YoutubeRepository _youtubeRepository;

  SearchBloc(this._youtubeRepository) : super();

  void onSearchInitiated(String query) {
    add(SearchInitiated((b) => b..query = query));
  }

  void fetchNextResultPage() {
    add(FetchNextResultPage());
  }

  @override
  SearchState get initialState => SearchState.initial();


  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
        if (event is SearchInitiated) {
      yield* mapSearchInitiated(event);
    } else if (event is FetchNextResultPage) {
      yield* mapFetchNextResultPage();
    }
  }

//todo
  // @override
  // Stream<SearchState> mapEventToState(
  //     SearchState currentState, SearchEvent event) async* {
  //   if (event is SearchInitiated) {
  //     yield* mapSearchInitiated(event);
  //   } else if (event is FetchNextResultPage) {
  //     yield* mapFetchNextResultPage();
  //   }
  // }

  Stream<SearchState> mapSearchInitiated(SearchInitiated event) async* {
    if (event.query.isEmpty) {
      yield SearchState.initial();
    } else {
      yield SearchState.loading();

      try {
        final searchResult = await _youtubeRepository.searchVideos(event.query);
        yield SearchState.success(searchResult);
      } on YoutubeSearchError catch (e) {
        yield SearchState.failure(e.message);
      } on NoSearchResultsException catch (e) {
        yield SearchState.failure(e.message);
      }
    }
  }

  Stream<SearchState> mapFetchNextResultPage() async* {
    try {
      final nextPageResults = await _youtubeRepository.fetchNextResultPage();
      yield SearchState.success(state.searchResults + nextPageResults);
    } on NoNextPageTokenException catch (_) {
      yield state.rebuild((b) => b..hasReachedEndOfResults = true);
    } on SearchNotInitiatedException catch (e) {
      yield SearchState.failure(e.message);
    } on YoutubeSearchError catch (e) {
      yield SearchState.failure(e.message);
    }
  }
}
