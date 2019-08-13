// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Home _$HomeFromJson(Map<String, dynamic> json) {
  return Home()
    ..totalHits = json['totalHits'] as int
    ..hits = (json['hits'] as List)
        ?.map((e) =>
            e == null ? null : ASummary.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..indexVersion = json['indexVersion'] as int;
}

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'totalHits': instance.totalHits,
      'hits': instance.hits,
      'indexVersion': instance.indexVersion
    };
