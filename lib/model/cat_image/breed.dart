import 'dart:convert';

import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

import 'weight.dart';

part 'breed.g.dart';

@Entity(tableName: "Breed", foreignKeys: [
  ForeignKey(
    childColumns: ["cat_id"],
    parentColumns: ["id"],
    entity: CatImage,
  )
])
@JsonSerializable()
class Breed {
  Weight? weight;
  @primaryKey
  String? id;
  @ColumnInfo(name: "cat_id")
  @JsonKey(name: "cat_id")
  String? catId;
  String? name;
  @JsonKey(name: 'cfa_url')
  @ColumnInfo(name: 'cfa_url')
  String? cfaUrl;
  @JsonKey(name: 'vetstreet_url')
  @ColumnInfo(name: 'vetstreet_url')
  String? vetstreetUrl;
  @JsonKey(name: 'vcahospitals_url')
  @ColumnInfo(name: 'vcahospitals_url')
  String? vcahospitalsUrl;
  String? temperament;
  String? origin;
  @JsonKey(name: 'country_codes')
  @ColumnInfo(name: 'country_codes')
  String? countryCodes;
  @JsonKey(name: 'country_code')
  String? countryCode;
  String? description;
  @JsonKey(name: 'life_span')
  @ColumnInfo(name: 'life_span')
  String? lifeSpan;
  int? indoor;
  int? lap;
  @JsonKey(name: 'alt_names')
  @ColumnInfo(name: 'alt_names')
  String? altNames;
  int? adaptability;
  @JsonKey(name: 'affection_level')
  @ColumnInfo(name: 'affection_level')
  int? affectionLevel;
  @JsonKey(name: 'child_friendly')
  @ColumnInfo(name: 'child_friendly')
  int? childFriendly;
  @JsonKey(name: 'dog_friendly')
  @ColumnInfo(name: 'dog_friendly')
  int? dogFriendly;
  @JsonKey(name: 'energy_level')
  @ColumnInfo(name: 'energy_level')
  int? energyLevel;
  int? grooming;
  @JsonKey(name: 'health_issues')
  @ColumnInfo(name: 'health_issues')
  int? healthIssues;
  int? intelligence;
  @JsonKey(name: 'shedding_level')
  @ColumnInfo(name: 'shedding_level')
  int? sheddingLevel;
  @JsonKey(name: 'social_needs')
  @ColumnInfo(name: 'social_needs')
  int? socialNeeds;
  @JsonKey(name: 'stranger_friendly')
  @ColumnInfo(name: 'stranger_friendly')
  int? strangerFriendly;
  int? vocalisation;
  int? experimental;
  int? hairless;
  int? natural;
  int? rare;
  int? rex;
  @JsonKey(name: 'suppressed_tail')
  @ColumnInfo(name: 'suppressed_tail')
  int? suppressedTail;
  @JsonKey(name: 'short_legs')
  @ColumnInfo(name: 'short_legs')
  int? shortLegs;
  @JsonKey(name: 'wikipedia_url')
  @ColumnInfo(name: 'wikipedia_url')
  String? wikipediaUrl;
  int? hypoallergenic;
  @JsonKey(name: 'reference_image_id')
  @ColumnInfo(name: 'reference_image_id')
  String? referenceImageId;

  Breed({
    this.catId,
    this.weight,
    this.id,
    this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.description,
    this.lifeSpan,
    this.indoor,
    this.lap,
    this.altNames,
    this.adaptability,
    this.affectionLevel,
    this.childFriendly,
    this.dogFriendly,
    this.energyLevel,
    this.grooming,
    this.healthIssues,
    this.intelligence,
    this.sheddingLevel,
    this.socialNeeds,
    this.strangerFriendly,
    this.vocalisation,
    this.experimental,
    this.hairless,
    this.natural,
    this.rare,
    this.rex,
    this.suppressedTail,
    this.shortLegs,
    this.wikipediaUrl,
    this.hypoallergenic,
    this.referenceImageId,
  });

  @override
  String toString() {
    return 'Breed(weight: $weight, id: $id, name: $name, cfaUrl: $cfaUrl, vetstreetUrl: $vetstreetUrl, vcahospitalsUrl: $vcahospitalsUrl, temperament: $temperament, origin: $origin, countryCodes: $countryCodes, countryCode: $countryCode, description: $description, lifeSpan: $lifeSpan, indoor: $indoor, lap: $lap, altNames: $altNames, adaptability: $adaptability, affectionLevel: $affectionLevel, childFriendly: $childFriendly, dogFriendly: $dogFriendly, energyLevel: $energyLevel, grooming: $grooming, healthIssues: $healthIssues, intelligence: $intelligence, sheddingLevel: $sheddingLevel, socialNeeds: $socialNeeds, strangerFriendly: $strangerFriendly, vocalisation: $vocalisation, experimental: $experimental, hairless: $hairless, natural: $natural, rare: $rare, rex: $rex, suppressedTail: $suppressedTail, shortLegs: $shortLegs, wikipediaUrl: $wikipediaUrl, hypoallergenic: $hypoallergenic, referenceImageId: $referenceImageId)';
  }

  factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);

  Map<String, dynamic> toJson() => _$BreedToJson(this);

  Breed copyWith({
    String? catId,
    Weight? weight,
    String? id,
    String? name,
    String? cfaUrl,
    String? vetstreetUrl,
    String? vcahospitalsUrl,
    String? temperament,
    String? origin,
    String? countryCodes,
    String? countryCode,
    String? description,
    String? lifeSpan,
    int? indoor,
    int? lap,
    String? altNames,
    int? adaptability,
    int? affectionLevel,
    int? childFriendly,
    int? dogFriendly,
    int? energyLevel,
    int? grooming,
    int? healthIssues,
    int? intelligence,
    int? sheddingLevel,
    int? socialNeeds,
    int? strangerFriendly,
    int? vocalisation,
    int? experimental,
    int? hairless,
    int? natural,
    int? rare,
    int? rex,
    int? suppressedTail,
    int? shortLegs,
    String? wikipediaUrl,
    int? hypoallergenic,
    String? referenceImageId,
  }) {
    return Breed(
      catId: catId ?? this.catId,
      weight: weight ?? this.weight,
      id: id ?? this.id,
      name: name ?? this.name,
      cfaUrl: cfaUrl ?? this.cfaUrl,
      vetstreetUrl: vetstreetUrl ?? this.vetstreetUrl,
      vcahospitalsUrl: vcahospitalsUrl ?? this.vcahospitalsUrl,
      temperament: temperament ?? this.temperament,
      origin: origin ?? this.origin,
      countryCodes: countryCodes ?? this.countryCodes,
      countryCode: countryCode ?? this.countryCode,
      description: description ?? this.description,
      lifeSpan: lifeSpan ?? this.lifeSpan,
      indoor: indoor ?? this.indoor,
      lap: lap ?? this.lap,
      altNames: altNames ?? this.altNames,
      adaptability: adaptability ?? this.adaptability,
      affectionLevel: affectionLevel ?? this.affectionLevel,
      childFriendly: childFriendly ?? this.childFriendly,
      dogFriendly: dogFriendly ?? this.dogFriendly,
      energyLevel: energyLevel ?? this.energyLevel,
      grooming: grooming ?? this.grooming,
      healthIssues: healthIssues ?? this.healthIssues,
      intelligence: intelligence ?? this.intelligence,
      sheddingLevel: sheddingLevel ?? this.sheddingLevel,
      socialNeeds: socialNeeds ?? this.socialNeeds,
      strangerFriendly: strangerFriendly ?? this.strangerFriendly,
      vocalisation: vocalisation ?? this.vocalisation,
      experimental: experimental ?? this.experimental,
      hairless: hairless ?? this.hairless,
      natural: natural ?? this.natural,
      rare: rare ?? this.rare,
      rex: rex ?? this.rex,
      suppressedTail: suppressedTail ?? this.suppressedTail,
      shortLegs: shortLegs ?? this.shortLegs,
      wikipediaUrl: wikipediaUrl ?? this.wikipediaUrl,
      hypoallergenic: hypoallergenic ?? this.hypoallergenic,
      referenceImageId: referenceImageId ?? this.referenceImageId,
    );
  }
}
