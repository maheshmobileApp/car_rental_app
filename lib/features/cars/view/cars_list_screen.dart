import 'package:flutter/material.dart';

class CarsListScreen extends StatefulWidget {
  const CarsListScreen({Key? key}) : super(key: key);

  @override
  _CarsListScreenState createState() => _CarsListScreenState();
}

class _CarsListScreenState extends State<CarsListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const Text("Cars List") ,),
      body:const Center(
        child: Text("Cars List Screen"),
      ),
    );
  }
}
