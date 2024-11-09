import 'package:bloc2_5/data/api/api_respose.dart';

abstract class Api {
  Future<ApiRespone> onGetProduct();
}
