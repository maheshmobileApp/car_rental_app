import 'package:car_rental_app/features/splash/view_model/splash_view_model.dart';
import 'package:car_rental_app/routes/routes_constants.dart';
import 'package:car_rental_app/services/navigation_services.dart';
import 'package:car_rental_app/widget/logo_widget.dart';
import 'package:flutter/material.dart';

class SplashScren extends StatefulWidget {
  const SplashScren({super.key});

  @override
  _SplashScrenState createState() => _SplashScrenState();
}

class _SplashScrenState extends State<SplashScren> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LogoWidget(width: 300, height: 300),
      ),
    );
  }

  @override
  void initState() {
    checkUserSession();
    super.initState();
  }

  checkUserSession() async {
    await Future.delayed(const Duration(seconds: splashDuration));
    NavigationServices().navigateTo(RoutesConstants.loginScreen);
  }
}