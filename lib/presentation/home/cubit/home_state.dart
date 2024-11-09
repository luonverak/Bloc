import 'package:bloc2_5/data/model/product_model.dart';

class HomeState {
  final List<ProductModel>? listProduct;

  HomeState({this.listProduct});

  HomeState copyWith({
    List<ProductModel>? listProduct,
  }) {
    return HomeState(
      listProduct: listProduct ?? this.listProduct,
    );
  }
}
