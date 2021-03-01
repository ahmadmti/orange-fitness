import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:http/http.dart' as http;
import 'package:kiwi/kiwi.dart';
import 'package:orange_fitness/ui/detail/detail_bloc.dart';
import 'package:orange_fitness/ui/search/search_bloc.dart';

import 'data/network/youtube_data_source.dart';
import 'data/repository/youtube_repository.dart';

void initKiwi() {
  KiwiContainer()
    ..registerInstance(http.Client())
    ..registerFactory((c) => YoutubeDataSource(c.resolve()))
    ..registerFactory((c) => YoutubeRepository(c.resolve()))
    ..registerFactory((c) => SearchBloc(c.resolve()))
    ..registerFactory((c) => DetailBloc(c.resolve()));
}
