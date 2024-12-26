import 'package:car_rental_app/services/navigation_services.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(onPressed: (){
        
        Navigator.pushNamed(context, '/signup');
        NavigationServices().navigateTo('/signup');  


      }, child: Text("data")),
    );
  }
}