import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import './Article.dart';

part 'Home.g.dart';

@JsonSerializable()
class Home {
  int totalHits;
  List<ASummary> hits;
  int indexVersion;

  Home();

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
  Map<String, dynamic> toJson() => _$HomeToJson(this);
}
