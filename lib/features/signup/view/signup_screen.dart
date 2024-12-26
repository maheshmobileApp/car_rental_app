import 'package:car_rental_app/services/navigation_services.dart';
import 'package:car_rental_app/widget/button_widget.dart';
import 'package:car_rental_app/widget/input_text_field_widget.dart';
import 'package:car_rental_app/widget/logo_widget.dart';
import 'package:car_rental_app/widget/text_button_widget.dart';
import 'package:car_rental_app/widget/title_and_sub_heading_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({ Key? key }) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _nameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const LogoWidget(
              height: 250,
            ),
          const  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child:  TitleAndSubHeadingWidget(
                  title: "Welcome Back",
                  subHeading:
                      "Sign up in to your account using email , name and password"),
            ),
            const SizedBox(
              height: 20,
            ),
            InputTextFieldWidget(
                hintText: "Enter Name",
                prefixIcon: const Icon(Icons.person),
                textEditingController: _nameTextController),
            const SizedBox(
              height: 20,
            ),
            InputTextFieldWidget(
                hintText: "Enter Email",
                prefixIcon: const Icon(Icons.email),
                textEditingController: _emailTextController),
            const SizedBox(
              height: 20,
            ),
            InputTextFieldWidget(
              hintText: "Enter Password",
              textEditingController: _passwordTextController,
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: const Icon(Icons.visibility),
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonWidget(buttonTitle: "Sign Up", onPressed: () {}),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButtonWidget(
                    buttonTitle: "Login",
                    onPressed: () {
                      NavigationServices().goBack();
                    }),
              ],
            )
        
          ],
        ),
      ),
    );
  }
}