import 'package:car_rental_app/domain/vehicle.dart';
import 'package:car_rental_app/domain/enums.dart';

abstract class VehicleCardInterface {
  Future<Vehicle> getVehicle();
}

class VehicleCardRepository implements VehicleCardInterface{


  @override
  Future<Vehicle> getVehicle() async {
    await Future.delayed(Duration(seconds: 3));
    return Vehicle(
        manufacturer: "Subaru",
        model: "Outback",
        power: 186,
        transmission: TransmissionType.automatic,
        description: "Великолепный автомобиль. неприметный по своему имиджу, но оочень завораживающий при эксплуатации",
        features:  [CarFeatures.appleCarPlay, CarFeatures.androidAuto, CarFeatures.bluetooth],
        imgPath: "assets/images/cars/subaru_1.png",
        price: 85.00
    );
  }

}