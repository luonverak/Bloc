import 'package:bloc2_5/data/api/api.dart';
import 'package:bloc2_5/data/api/api_client.dart';
import 'package:bloc2_5/data/repo/product_repo.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Api>(() => ApiClient(client: getIt()));
  getIt.registerLazySingleton(() => http.Client());

  getIt.registerLazySingleton<ProductRepo>(() => ProductRepo(getIt()));
}
