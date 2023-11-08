import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:task_architecture/features/home/data/models/response/banner_response.dart';
import 'package:task_architecture/utils/core/app_constants.dart';

import '../../../../utils/core/failures.dart';
import '../models/response/product_response.dart';

abstract interface class ProductRemoteDataSource {
  Future<ProductResponse?> getProducts();

  Future<BannerResponse?> getBanners();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final FirebaseDatabase _database;

  ProductRemoteDataSourceImpl() : _database = FirebaseDatabase.instance;

  @override
  Future<BannerResponse?> getBanners() async{
    try {
      final response = await _database.ref(AppConstants.ref).child(AppConstants.banners).get();
      final data = {"banners" : response.children.map((e) => e.value).toList()};
      if (response.exists) {
        return BannerResponse.fromJson(jsonDecode(jsonEncode(data)));
      } else {
        throw const ServerFailure(
          errorMessage: 'Value None',
          statusCode: 500,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ProductResponse?> getProducts() async {
    try {
      final response = await _database.ref(AppConstants.ref).child(AppConstants.products).get();
      print(response.children.first.value);
      if (response.children.first.exists) {
        final data = {"products" : response.children.map((e) => e.value).toList()};
        return ProductResponse.fromJson(jsonDecode(jsonEncode(data)));
      } else {
        throw const ServerFailure(
          errorMessage: 'Value None',
          statusCode: 500,
        );
      }
    } catch (e, s) {
      print(e);
      print(s);

      rethrow;
    }
  }
}
