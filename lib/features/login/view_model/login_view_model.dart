
import 'package:car_rental_app/features/login/model/login_request_model.dart';
import 'package:car_rental_app/features/login/model/login_response_model.dart';
import 'package:car_rental_app/features/login/repository/login_repository.dart';
import 'package:flutter/material.dart';

class LoginViewModel  extends ChangeNotifier{
 LoginRepository repository;
 LoginViewModel({required this.repository});


 Future<SignInResponseModel> loginApi(SignInRequestModel model ) async {
  try {
     final response = await repository.login(model.toJson());
     SignInResponseModel modelData = SignInResponseModel.fromJson(response.data);
     return modelData;
  } catch (e) {
    return SignInResponseModel(error: true);
  }
 }

}