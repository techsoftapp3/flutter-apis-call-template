import 'dart:convert';
import 'dart:math';
import 'package:floor/floor.dart';
import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'breed.dart';

part 'cat_image.g.dart';

@singleton
class BreedConverter extends TypeConverter<List<Breed>?, String> {
  @override
  List<Breed> decode(String databaseValue) {
    if (databaseValue.isEmpty) return [];
    final data = jsonDecode(databaseValue);
    final List<Map<String, dynamic>> result = [];
    if (data is List) {
      result.addAll(data.cast<Map<String, dynamic>>());
    } else {
      result.add(data);
    }
    return result.map((e) => Breed.fromJson(e)).toList();
  }

  @override
  String encode(List<Breed>? value) {
    final List<Map<String, dynamic>> data =
        (value ?? []).map((e) => e.toJson()).toList();
    return jsonEncode(data);
  }
}

@TypeConverters([BreedConverter])
@entity
@JsonSerializable()
class CatImage {
  @primaryKey
  String? id;
  String? url;
  List<Breed>? breeds;
  int? width;
  int? height;

  CatImage({this.id, this.url, this.breeds, this.width, this.height});

  @override
  String toString() {
    return 'CatImage(id: $id, url: $url, breeds: $breeds, width: $width, height: $height)';
  }

  factory CatImage.fromJson(Map<String, dynamic> json) {
    return _$CatImageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CatImageToJson(this);

  CatImage copyWith({
    String? id,
    String? url,
    List<Breed>? breeds,
    int? width,
    int? height,
  }) {
    return CatImage(
      id: id ?? this.id,
      url: url ?? this.url,
      breeds: breeds ?? this.breeds,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}
