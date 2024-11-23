import 'package:bloc2_5/data/model/product_model.dart';

class HomeState {
  final bool loading;
  final List<ProductModel>? listProduct;

  HomeState({
    this.listProduct,
    this.loading = false,
  });

  HomeState copyWith({
    bool? loading,
    List<ProductModel>? listProduct,
  }) {
    return HomeState(
      loading: loading ?? this.loading,
      listProduct: listProduct ?? this.listProduct,
    );
  }
}
