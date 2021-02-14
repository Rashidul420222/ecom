import 'package:http/http.dart' as http;

import '../models/products.dart';

class NetworkHelper {
  Future<Data> getData() async {
    String url = 'https://antopolis.tech/task-assets/ecom/ecom.json';
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return dataFromJson(response.body);
    } else {
      throw Exception('Fail to data load');
    }
  }
}
