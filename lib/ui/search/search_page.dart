import 'package:flutter/material.dart';
// import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:kiwi/kiwi.dart';
import 'package:orange_fitness/data/model/search/model_search.dart';
import 'package:orange_fitness/ui/detail/detail_page.dart';
import 'package:orange_fitness/ui/search/search.dart';
import 'package:orange_fitness/ui/search/search_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange_fitness/ui/search/widget/centered_message.dart';
import 'package:orange_fitness/ui/search/widget/search_bar.dart';

class SearchPage extends StatefulWidget {
  _SearchPageState createState() => _SearchPageState();
}

KiwiContainer container = KiwiContainer();

class _SearchPageState extends State<SearchPage> {
  final _searchBloc = container.resolve<SearchBloc>();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // container.registerInstance(SearchBloc(null));
    // container.registerFactory((c) => SearchBloc(c.resolve()));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // bloc: _searchBloc,
      create: (BuildContext context) => _searchBloc,
      child: _buildScaffold(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _searchBloc.close(); //todo
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(),
      ),
      body: BlocBuilder(
        bloc: _searchBloc,
        builder: (context, SearchState state) {
          if (state.isInitial) {
            return CenteredMessage(
              message: 'Start searching!',
              icon: Icons.ondemand_video,
            );
          }

          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.isSuccessful) {
            return _buildResultList(state);
          } else {
            return CenteredMessage(
              message: state.error,
              icon: Icons.error_outline,
            );
          }
        },
      ),
    );
  }

  Widget _buildResultList(SearchState state) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: ListView.builder(
        itemCount: _calculateListItemCount(state),
        controller: _scrollController,
        itemBuilder: (context, index) {
          return index >= state.searchResults.length
              ? _buildLoaderListItem()
              : _buildVideoListItem(state.searchResults[index]);
        },
      ),
    );
  }

  int _calculateListItemCount(SearchState state) {
    if (state.hasReachedEndOfResults) {
      return state.searchResults.length;
    } else {
      return state.searchResults.length + 1;
    }
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      container.resolve<SearchBloc>().fetchNextResultPage();
    }
    return false;
  }

  Widget _buildVideoListItem(SearchItem searchItem) {
    return GestureDetector(
      child: _buildVideoListItemCard(searchItem.snippet),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) {
            return DetailPage(
              videoId: searchItem.id.videoId,
            );
          }),
        );
      },
    );
  }

  Widget _buildVideoListItemCard(SearchSnippet videoSnippet) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                videoSnippet.thumbnails.high.url,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text(
              videoSnippet.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 5),
            Text(
              videoSnippet.description,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoaderListItem() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
