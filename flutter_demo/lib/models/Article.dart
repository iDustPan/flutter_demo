import 'package:json_annotation/json_annotation.dart';

part 'Article.g.dart';

@JsonSerializable()
class ASummary {
  Article summary;
  ASummary();

  factory ASummary.fromJson(Map<String, dynamic> json) =>
      _$ASummaryFromJson(json);
  Map<String, dynamic> toJson() => _$ASummaryToJson(this);
}

@JsonSerializable()
class Article {
  String type;
  String articleId;
  String merchant;
  String merchantId;
  String date;
  String title;
  String subtitle;
  String link;
  String dynamicLink;
  String jsonContents;
  String authorLabel;
  String authorAvatar;
  List tags;
  String badge;
  double expiresAt;
  int viewsN;
  int commentsN;

  Article();

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}
