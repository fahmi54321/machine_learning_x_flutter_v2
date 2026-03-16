// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:machine_learning_x_flutter/data/datasources/auth/auth_datasource.dart';
import 'package:machine_learning_x_flutter/data/network/dio_client.dart';

class AuthDatasourceImpl implements AuthDatasource {
  final DioClient dioClient;
  // final TokenStorage tokenStorage; // soon
  AuthDatasourceImpl({
    required this.dioClient,
    // required this.tokenStorage // soon
  });

  @override
  Future<String?> refreshToken() async {
    // soon

    // final refreshToken = await tokenStorage.getRefreshToken();

    // if (refreshToken == null) return null;

    // try {
    //   final response = await dioClient.dio.post(
    //     '/auth/refresh',
    //     data: {"refresh_token": refreshToken},
    //   );

    //   if (response.statusCode == 200) {
    //     final newToken = response.data["access_token"];

    //     await tokenStorage.saveAccessToken(newToken);

    //     return newToken;
    //   }
    // } catch (_) {}

    return null;
  }
}
