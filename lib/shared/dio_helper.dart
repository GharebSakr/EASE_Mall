//import 'dart:_http';
import 'dart:convert';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:ease_mall/models/login_model.dart';
import 'package:ease_mall/models/productResponse.dart';
import 'package:ease_mall/models/product_model.dart';
import 'package:ease_mall/models/userResponse.dart';
import 'package:ease_mall/models/user_model.dart';
import 'package:ease_mall/models/variables.dart';
import '../models/loginResponse.dart';
// class DioHelper {
//   static Dio? dio;
//
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: 'https://localhost:44315',
//         receiveDataWhenStatusError: true,
//       ),
//     );
//   }
//
// static Future<Response?> Add({required UserModel userModel}) async {
//   (dio?.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//       (HttpClient dioClient) {
//     dioClient.badCertificateCallback =
//     ((X509Certificate cert, String host, int port) => true);
//     return dioClient;
//   };
// return await dio?.post('/Inside/Add', data: {
//   'id':userModel.id,
// 'name': userModel.name,
// 'phone': userModel.phone,
// 'email': userModel.email,
// 'password': userModel.password,
// 'isactive': userModel.isactive,
// }).then((value) {
// userResponse = UserResponse.fromJson(value.data);
// }).catchError((error) {
// print(error.toString());
// });
//  }
// static Future<Response?> Search({required LoginModel loginModel}) async {
//
//     return await dio?.post('/Inside/Search', data: {
//
//       'password': loginModel.password,
//       'email': loginModel.email,
//     }).then((value) {
//       loginResponse = LoginResponse.fromJson(value.data);
//     }).catchError((error) {
//       print(error.toString());
//     });
//   }
// }

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://gp2022.ekosysco.com',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response?> Add({required UserModel userModel}) async {
    (dio?.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    return await dio?.post('/User/Add', data: {
      "name": userModel.name,
      "phone": userModel.phone,
      "email": userModel.email,
      "addersses": userModel.addresses,
      "password": userModel.password,
      "isactive": userModel.isactive,
    }).then((value) {
      print("hiiiiiiiiiiiiiiiii");
      print(value.data);
      print(UserResponse.fromJson(value.data));
      userResponse = UserResponse.fromJson(value.data);
    }).catchError((error) {
      print(error.toString());
    });
  }

  static Future<Response?> login({required LoginModel loginModel}) async {
    return await dio?.post('/User/Search', data: {
      "email": loginModel.email,
      "password": loginModel.password
    }).then((value) {
      loginResponse = LoginResponse.fromJson(value.data);
    }).catchError((error) {
      print(error.toString());
    });
  }

  static Future<Response?> FindByIdCategory(
      {required ProductModel productModel, queryparameter}) async {
    return await dio?.get('​/Inside​/FindByIdCategory', queryParameters: {
      "idcategory": productModel.id,
    }).then((value) {
      productResponse = ProductResponse.fromJson(value.data);
    }).catchError((error) {
      print(error.toString());
    });
  }
}
