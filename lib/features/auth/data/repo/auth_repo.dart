import '../../../../core/network/network.dart';

abstract class AuthRepo {
  static Future<dynamic> login(
      {required String? email, required String? password}) async {
    return await NetworkHelper().post(
      withToken: false,
      endPoint: EndPoints.LOGIN,
      params: {
        "email": email,
        "password": password,
      },
    );
  }
}
