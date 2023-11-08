// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerResponseImpl _$$BannerResponseImplFromJson(Map<String, dynamic> json) =>
    _$BannerResponseImpl(
      banners: (json['banners'] as List<dynamic>)
          .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BannerResponseImplToJson(
        _$BannerResponseImpl instance) =>
    <String, dynamic>{
      'banners': instance.banners,
    };
