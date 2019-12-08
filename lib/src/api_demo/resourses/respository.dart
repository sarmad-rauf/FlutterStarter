import 'dart:async';
import 'news_api_provider.dart';
import 'news_db_provider.dart';
import '../models/model.dart';

class Repository {
  final apiProvider = NewsApiProvider();
  final dbProvider = NewsDbProvider();

  Future<List<int>> fetchTopIds() {
    return apiProvider.fetchTopIds();
  }

  Future<ItemModel> fetchItem(id) async {
    var item = await dbProvider.fetchItem(id);
    if (item != null) return item;
    item = await apiProvider.fetchItems(id);
    dbProvider.addItem(item);
    return item;
  }
}
