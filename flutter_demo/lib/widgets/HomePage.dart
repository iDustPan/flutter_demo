import 'dart:math';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import '../models/Home.dart';
import '../models/Article.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(color: Color(0xff333333)),
          ),
          backgroundColor: Color(0xfff7f7f7),
        ),
        body: HomePageList());
  }
}

class HomePageList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageListState();
  }
}

class _HomePageListState extends State<HomePageList> {
  var articles = [];

  void fetchData() async {
    var response = await get(
        'https://baleen2-dev.bieyangapp.com/v1/articles/_search?&f=0&t=10&q=Nike&pb=-1');

    var home = Home.fromJson(jsonDecode(response.body));

    for (var article in home.hits) {
      articles.add(article);
    }

    developer.log(articles.toString());
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {},
    );
  }
}
