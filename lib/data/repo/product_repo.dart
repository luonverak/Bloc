import 'package:bloc2_5/core/failure.dart';
import 'package:bloc2_5/data/api/api.dart';
import 'package:bloc2_5/data/model/product_model.dart';
import 'package:bloc2_5/data/repo/repo_response.dart';
import 'package:dartz/dartz.dart';

class ProductRepo {
  final Api api;

  ProductRepo(this.api);

  Future<Either<Failure, RepoResponse<List<ProductModel>>>>
      onGetProduct() async {
    try {
      final results = await api.onGetProduct();

      if (results.record == []) {
        return Left(MessageError("Product is empty"));
      }

      List<ProductModel> product = [];
      for (var result in results.record) {
        product.add(ProductModel.fromJson(result));
      }

      return Right(
        RepoResponse(record: product),
      );
    } catch (e) {
      rethrow;
    }
  }
}
