import 'package:car_rental_app/features/bookings/repository/booking_repository.dart';
import 'package:car_rental_app/services/api_services.dart';
import 'package:car_rental_app/utils/server_constants.dart';

class BookingRepositoryImpl extends BookingRepository {
  final ApiServices _apiServices = ApiServices();
  @override
  Future<dynamic> createBooking(dynamic data) async {
    return await _apiServices.postCall(ServerConstants.bookACar, data);
  }

}