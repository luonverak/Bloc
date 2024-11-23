import 'package:bloc2_5/data/model/product_model.dart';

class DetailState {
  final ProductModel? productModel;

  DetailState({this.productModel});

  DetailState copyWith({
    ProductModel? productModel,
  }) {
    return DetailState(
      productModel: productModel ?? this.productModel,
    );
  }
}
