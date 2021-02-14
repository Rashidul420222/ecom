import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class ProductPage extends StatefulWidget {
  static const id = 'productPage';
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  String data;
  var productsList = [];
  void getData() async {
    String url = 'https://antopolis.tech/task-assets/ecom/ecom.json';
    final http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      data = response.body;
      setState(() {
        productsList = jsonDecode(data)['data'];
        print(productsList);
      });
    } else {
      throw Exception('Fail to data load');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.sort),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
          ],
          title: Center(child: const Text("PRODUCTS")),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          children: _buildGridCards(productsList.length),
        ));
  }

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
      (int index) => Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 18 / 11,
                child: Image.network(
                  jsonDecode(data)['data'][index]['photo'],
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(jsonDecode(data)['data'][index]['name']),
                  SizedBox(height: 8),
                  Text(
                    '\$${jsonDecode(data)['data'][index]['price'].toString()}',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

    return cards;
  }
}
