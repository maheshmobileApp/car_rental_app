import 'package:car_rental_app/features/cars/model/cars_model.dart';
import 'package:car_rental_app/utils/server_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CarsViewModel extends ChangeNotifier {
  List<Cars> cars = [];
  Future<void> getCars() async {
    const url = ServerConstants.baseUrl + ServerConstants.getAllCars;
    final dioObject = Dio();

    try {
      final response = await dioObject.get(url);
      if (response.statusCode == 200) {
        final carsModel = CarsModelData.fromJson(response.data);
        cars = carsModel.cars ?? [];
      }
    } catch (e) {
      cars = [];
    } finally {
      notifyListeners();
    }

//api/cars
  }
}
