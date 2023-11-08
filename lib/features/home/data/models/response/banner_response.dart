import 'package:freezed_annotation/freezed_annotation.dart';

import '../banner/banner.dart';

part 'banner_response.freezed.dart';

part 'banner_response.g.dart';

@freezed
class BannerResponse with _$BannerResponse {


  const factory BannerResponse({
    required List<BannerModel> banners,
  }) = _BannerResponse;

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}

