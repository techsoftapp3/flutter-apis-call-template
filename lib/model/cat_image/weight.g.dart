// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      imperial: json['imperial'] as String?,
      metric: json['metric'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'id': instance.id,
      'imperial': instance.imperial,
      'metric': instance.metric,
    };
