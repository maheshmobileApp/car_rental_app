import 'package:car_rental_app/routes/routes_constants.dart';
import 'package:car_rental_app/services/navigation_services.dart';
import 'package:car_rental_app/widget/button_widget.dart';
import 'package:car_rental_app/widget/input_text_field_widget.dart';
import 'package:car_rental_app/widget/logo_widget.dart';
import 'package:car_rental_app/widget/text_button_widget.dart';
import 'package:car_rental_app/widget/title_and_sub_heading_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const LogoWidget(
              height: 250,
            ),
            const TitleAndSubHeadingWidget(
                title: "Welcome Back",
                subHeading: "Log in to your account using email "),
            const SizedBox(
              height: 20,
            ),

            InputTextFieldWidget(
              hintText: "Email",
              textEditingController: _emailTextController,
              prefixIcon: const Icon(Icons.email),
            ),
            const SizedBox(
              height: 20,
            ),
            InputTextFieldWidget(
              hintText: "Password",
              textEditingController: _passwordTextController,
              obscureText: true,
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: const Icon(Icons.visibility_off),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButtonWidget(
                    buttonTitle: "Forgot Password?", onPressed: () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonWidget(buttonTitle: "Login", onPressed: () {}),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButtonWidget(
                    buttonTitle: "Sign Up",
                    onPressed: () {
                      NavigationServices()
                          .navigateTo(RoutesConstants.signUpScreen);
                    }),
              ],
            ) 
        
          ],
        ),
      ),
    );
  }
}

/*
Logo
Text (welcome with text)
Email
Password
Forgotpassowrd
login button 

Signup button

 */