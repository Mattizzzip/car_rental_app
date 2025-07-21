import 'package:car_rental_app/domain/enums.dart';

class Vehicle {
    final String manufacturer;
    final String model;
    final int power;
    final TransmissionType transmission;
    final String description;
    final List<CarFeatures> features;
    final String imgPath;
    final double price;

    const Vehicle({required this.manufacturer, required this.model, required this.power, required this.transmission, required this.description, required this.features, required this.imgPath, required this.price});
}