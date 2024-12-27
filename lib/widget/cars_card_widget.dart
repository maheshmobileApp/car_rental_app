
import 'package:car_rental_app/features/cars/model/cars_model.dart';
import 'package:car_rental_app/widget/cache_network_image_widget.dart';
import 'package:flutter/material.dart';
class CarsCardWidget extends StatelessWidget {
const CarsCardWidget({super.key, required this.carData});
final Cars carData;


  @override
  Widget build(BuildContext context){
    return Card(
      child: Column(
        children: [
         CacheNetworkImageWidget(imageUrl: carData.image ?? ""),
          Text(carData.name ?? ""),
          Text(carData.brand ?? ""),
          Text(carData.address ?? ""),
          // Text(carData.pricePerDay.toString() ?? ""),
          Text(carData.description ?? ""),
        ],
      ),
    );
  }
}