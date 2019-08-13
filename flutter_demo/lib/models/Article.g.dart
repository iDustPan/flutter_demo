// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ASummary _$ASummaryFromJson(Map<String, dynamic> json) {
  return ASummary()
    ..summary = json['summary'] == null
        ? null
        : Article.fromJson(json['summary'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ASummaryToJson(ASummary instance) =>
    <String, dynamic>{'summary': instance.summary};

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article()
    ..type = json['type'] as String
    ..articleId = json['articleId'] as String
    ..merchant = json['merchant'] as String
    ..merchantId = json['merchantId'] as String
    ..date = json['date'] as String
    ..title = json['title'] as String
    ..subtitle = json['subtitle'] as String
    ..link = json['link'] as String
    ..dynamicLink = json['dynamicLink'] as String
    ..jsonContents = json['jsonContents'] as String
    ..authorLabel = json['authorLabel'] as String
    ..authorAvatar = json['authorAvatar'] as String
    ..tags = json['tags'] as List
    ..badge = json['badge'] as String
    ..expiresAt = (json['expiresAt'] as num)?.toDouble()
    ..viewsN = json['viewsN'] as int
    ..commentsN = json['commentsN'] as int
    ..image = json['image'] as String;
}

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'type': instance.type,
      'articleId': instance.articleId,
      'merchant': instance.merchant,
      'merchantId': instance.merchantId,
      'date': instance.date,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'link': instance.link,
      'dynamicLink': instance.dynamicLink,
      'jsonContents': instance.jsonContents,
      'authorLabel': instance.authorLabel,
      'authorAvatar': instance.authorAvatar,
      'tags': instance.tags,
      'badge': instance.badge,
      'expiresAt': instance.expiresAt,
      'viewsN': instance.viewsN,
      'commentsN': instance.commentsN,
      'image': instance.image
    };
