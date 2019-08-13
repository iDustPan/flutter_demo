import 'dart:math';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';
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

  void _fetchData() async {
    var response = await get(
        'https://baleen2-dev.bieyangapp.com/v1/articles/_search?&f=0&t=10&q=Nike&pb=-1',
        headers: {"Content-Type": "application/json"});

    var home =
        Home.fromJson(json.decode(Utf8Decoder().convert(response.bodyBytes)));

    setState(() {
      articles.addAll(home.hits);
    });
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return HomeListWidget(articles);
  }
}

class HomeListWidget extends StatelessWidget {
  List _articles = [];

  HomeListWidget(this._articles);

  Widget _itemBuilder(context, index) {
    ASummary articele = _articles[index];
    Article summary = articele.summary;
    print(summary.image.toString());

    if (summary.type == 'REGULAR') {
      String imgUrl =
          'https://baleen-dev-cdn-g.bybieyang.com/static/curation${summary.image}';
      return Container(
          child: Row(
        children: <Widget>[
          Image.network(
            imgUrl,
            width: 142,
            height: 142,
          ),
          Column(
            children: <Widget>[
              Text(
                summary.date,
                style: TextStyle(color: Color(0xff999999), fontSize: 12),
              ),
              Text(
                summary.title,
                style: TextStyle(color: Color(0xff333333), fontSize: 16),
              ),
              Text(
                summary.subtitle != null ? summary.subtitle : '',
                style: TextStyle(color: Color(0xff666666), fontSize: 13),
              ),
            ],
          )
        ],
      ));
    } else {
      return Container(
        child: Text('Waiting to do...'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _articles.length,
      itemBuilder: _itemBuilder,
    );
  }
}
