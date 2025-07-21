part of "vehicle_card_bloc.dart";


class VehicleCardState {}

class VehicleCardInitial extends VehicleCardState {}

class VehicleCardLoading extends VehicleCardState {}

class VehicleCardLoaded extends VehicleCardState {

  final Vehicle vehicle;

  VehicleCardLoaded({required this.vehicle});
}

class VehicleCardLoadingFailure extends VehicleCardState {}