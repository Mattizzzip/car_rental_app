import 'package:car_rental_app/core/vehicle_card/bloc/test_data/vehicle_card_repository.dart';
import 'package:car_rental_app/core/vehicle_card/bloc/vehicle_card_bloc.dart';
import 'package:car_rental_app/domain/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class VehicleCard extends StatefulWidget {

    const VehicleCard({super.key});
    
    @override
    State<VehicleCard> createState() => _VehicleCardPageState();
    
}

class _VehicleCardPageState extends State<VehicleCard> {

    final _vehicleCardBloc = VehicleCardBloc(VehicleCardRepository());

    String manufacturer = "Loading...";
    String model = "Loading...";
    String transmission = "Loading...";
    int power = 999;
    double price = 999;
    String imgPath = "assets/images/cars/car_absent.png";

    bool loadingStatus = true;
    @override
    void initState() {
      _vehicleCardBloc.add(VehicleCardLoad());
        super.initState();
    }
    
    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: double.infinity,
            child: GestureDetector(
                onTap: () {},
                child: BlocBuilder<VehicleCardBloc, VehicleCardState>(
                      bloc: _vehicleCardBloc,
                      builder: (context, state) {
                        if (state is VehicleCardLoaded) {
                          manufacturer = state.vehicle.manufacturer;
                          model = state.vehicle.model;
                          transmission = state.vehicle.transmission ==
                              TransmissionType.automatic
                              ? "Automatic"
                              : "Manual";
                          power = state.vehicle.power;
                          price = state.vehicle.price;
                          imgPath = state.vehicle.imgPath;
                          loadingStatus = false;
                        }
                        return Container(
                            child: Skeletonizer(
                              enabled: loadingStatus,
                              child: Column(
                                  children: [
                                    Image.asset(imgPath, width: 512),
                                    // FavoriteCarBtn(),//Надо сделать эту кнопку
                                    Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text(
                                                  "$manufacturer $model",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 32
                                                  ),
                                                ),
                                                // VehicleRating(widget.vehicle) //Рейтинг авто пользователями, виджет надо сделать
                                              ]
                                          ),
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.9,
                                            height: 5.0,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFF6F6F5),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))
                                            ),
                                          ),
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                //VehicleMainParam - характеристика авто, принимает либо трансмиссию либо мощность и в соотв с этим отображает на экране инфу
                                                // VehicleMainParam(widget.vehicle.power),
                                                // VehicleMainParam(widget.vehicle.transmission),
                                                Text(
                                                  "$price \$",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 32
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ]
                                    ),
                                  ]
                              ),
                            ),
                          );
                      }),
            )
        );
    }
} 