
import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weight.g.dart';

@entity
@JsonSerializable()
class Weight {
  @PrimaryKey(autoGenerate: true)
  int? id; // Dummy primary key field
  String? imperial;
  String? metric;

  Weight({this.imperial, this.metric, this.id});

  @override
  String toString() => 'Weight(imperial: $imperial, metric: $metric)';

  factory Weight.fromJson(Map<String, dynamic> json) {
    return _$WeightFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WeightToJson(this);

  Weight copyWith({
    String? imperial,
    String? metric,
  }) {
    return Weight(
      imperial: imperial ?? this.imperial,
      metric: metric ?? this.metric,
    );
  }
}
