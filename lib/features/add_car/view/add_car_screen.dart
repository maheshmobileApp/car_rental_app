import 'package:car_rental_app/features/add_car/view_model/add_car_view_model.dart';
import 'package:car_rental_app/widget/button_widget.dart';
import 'package:car_rental_app/widget/dropdown_widget.dart';
import 'package:car_rental_app/widget/input_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddCarScreen extends StatefulWidget {
  const AddCarScreen({ Key? key }) : super(key: key);

  @override
  _AddCarScreenState createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _brandTextController = TextEditingController();
  final TextEditingController _yearTextController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _priceTextController = TextEditingController();
  final TextEditingController _descriptionTextController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    final AddCarViewModel viewModel = Provider.of<AddCarViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Add Car"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputTextFieldWidget(
                  hintText: "Enter Name of the Car",
                  textEditingController: _nameTextController),
              const SizedBox(
                height: 10,
              ),
              InputTextFieldWidget(
                  hintText: "Enter Brand of the Car",
                  textEditingController: _brandTextController),
              const SizedBox(
                height: 10,
              ),
              DropdownWidget<int>(
                items: viewModel.yearsList,
                defaultValue:
                    viewModel.selectedYear ?? viewModel.yearsList.first,
                selectedValue: (year) {
                  viewModel.setSelectedYear(year);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownWidget<String>(
                items: viewModel.transmissionList,
                defaultValue: viewModel.selectedTransmission ??
                    viewModel.transmissionList.first,
                selectedValue: (transmission) {
                  viewModel.setSelectedTransmission(transmission);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownWidget<String>(
                items: viewModel.fuelTypeList,
                defaultValue:
                    viewModel.selectedFuelType ?? viewModel.fuelTypeList.first,
                selectedValue: (fuelType) {
                  viewModel.setSelectedFuelType(fuelType);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InputTextFieldWidget(
                  hintText: "Enter Price of the Car",
                  textEditingController: _priceTextController),
              const SizedBox(
                height: 10,
              ),
              InputTextFieldWidget(
                  hintText: "Enter Description of the Car",
                  textEditingController: _descriptionTextController),
              const SizedBox(
                height: 10,
              ),
              InputTextFieldWidget(
                  maxLines: 5,
                  hintText: "Enter Addres of the car",
                  textEditingController: _addressController),
              const SizedBox(
                height: 10,
              ),
              InputTextFieldWidget(
                  hintText: "Enter Price of the car per day ",
                  textEditingController: _priceTextController),
              const SizedBox(
                height: 10,
              ),
              InputTextFieldWidget(
                  maxLines: 5,
                  hintText: "Enter Description of the car",
                  textEditingController: _descriptionTextController),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                  buttonWidth: 300, buttonTitle: "Add Car", onPressed: () {})
            ],
            
          ),
        ),
      ),
    );
  }
}

/*
Name
Brand
yerar
fuel type
transmission type
addres
pricePerDay
description
UploadImage


TASK -> 
	1. Splash screen ->  
	2. Login ->  
	3. Sign up ->  
	4. Home screen (cars list) ->
	6. Add Car -> 


 */