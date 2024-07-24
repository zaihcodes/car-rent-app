import 'package:car_rent_app/data/models/car.dart';
import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xfff3f3f3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 12, spreadRadius: 5)
          ]),
      child: Column(
        children: [
          Image.asset('assets/car_image.png', height: 120),
          Text(
            car.model,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/gps.png'),
                      Text('${car.distance}km')
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/pump.png'),
                      Text('${car.fuelCapacity}L')
                    ],
                  )
                ],
              ),
              Text(
                '\$${car.pricePerHour.toStringAsFixed(2)}/h',
                style: const TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
