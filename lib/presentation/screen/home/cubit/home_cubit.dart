import 'package:bloc2_5/core/injection.dart';
import 'package:bloc2_5/data/repo/product_repo.dart';
import 'package:bloc2_5/presentation/screen/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
  final productRepo = getIt<ProductRepo>();

  Future<void> onGetProduct() async {
    try {
      emit(state.copyWith(loading: true));
      await productRepo.onGetProduct().then((value) {
        value.fold((l) => null, (r) {
          emit(state.copyWith(loading: false, listProduct: r.record));
        });
      });
      emit(state.copyWith(loading: false));
    } catch (e) {
      emit(state.copyWith(loading: false));
      rethrow;
    }
  }
}
