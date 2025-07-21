import 'package:car_rental_app/core/vehicle_card/bloc/test_data/vehicle_card_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/vehicle.dart';



part "vehicle_card_event.dart";
part "vehicle_card_state.dart";


class VehicleCardBloc extends Bloc<VehicleCardEvent, VehicleCardState> {

    VehicleCardBloc(this.vehicleCardInterface) : super(VehicleCardInitial()) {
        on<VehicleCardLoad>((event, emit) async{
            final card = await vehicleCardInterface.getVehicle();
            emit(VehicleCardLoaded(vehicle: card));
        });
    }
    final VehicleCardInterface vehicleCardInterface;
} 