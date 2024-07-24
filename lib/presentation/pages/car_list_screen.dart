import 'package:car_rent_app/data/models/car.dart';
import 'package:car_rent_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  CarListScreen({super.key});

  final List<Car> cars = [
    Car(model: 'Fortuer GR', distance: 87, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuer GR', distance: 87, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuer GR', distance: 87, fuelCapacity: 50, pricePerHour: 45),
    Car(model: 'Fortuer GR', distance: 87, fuelCapacity: 50, pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('choose Your Car'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index) {
          return CarCard(car: cars[index]);
        },
      ),
    );
  }
}
