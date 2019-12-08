import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'dart:async';
import '../models/model.dart';

class NewsApiProvider {
  final _root = 'https://hacker-news.firebaseio.com/v0';
  Client client = Client();

  Future<List<int>> fetchTopIds() async {
    final response = await client.get('$_root/topstories.json');
    final ids = json.decode(response.body);
    return ids.cast<int>();
  }

  Future<ItemModel> fetchItems(int id) async {
    final response = await client.get('$_root/item/$id.json');
    final parsedJson = json.decode(response.body);
    return ItemModel.fromJson(parsedJson);
  }
}
