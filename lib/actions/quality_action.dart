
library quality_action;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quality_action.freezed.dart';


@freezed
abstract class Quality with _$Quality{

  const factory Quality(String quality) = QualityMovie;
}