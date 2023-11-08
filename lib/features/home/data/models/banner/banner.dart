import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.g.dart';

part 'banner.freezed.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    required String image,
  }) = _BannerModel;


  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}


