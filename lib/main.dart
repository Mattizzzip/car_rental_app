
import 'package:car_rental_app/core/buttons/slider_button.dart';
import 'package:car_rental_app/core/buttons/manufacturer_button.dart';
import 'package:flutter/material.dart';

import 'config/app_router.dart';
import 'core/auth_row.dart';
import 'core/buttons/default_button.dart';
import 'core/credit_card_panel.dart';
import 'core/vehicle_card/vehicle_card.dart';
import 'core/vehicle_parameter.dart';
import 'domain/models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "car rent",
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}

class LoadingPage extends StatelessWidget {
  LoadingPage({super.key});

  final CreditCard andrewCard = CreditCard(number: 5265520020841413, owner: "Andrei Osipau", validUntil: DateTime(2027, 2), cvv: 542);
  final CreditCard daryaCard = CreditCard(number: 4916989642300486, owner: "Darya Liubimtsava", validUntil: DateTime(2028, 4), cvv: 542);

  final CreditCard unionandrewCard = CreditCard(number: 6265520020841413, owner: "Andrei Osipau", validUntil: DateTime(2027, 2), cvv: 542);
  final CreditCard mirdaryaCard = CreditCard(number: 2216989642300486, owner: "Darya Liubimtsava", validUntil: DateTime(2028, 4), cvv: 542);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/loading_screen_bg.png', fit: BoxFit.cover,),
                ListView(
                  children: [
                    Text("Обычная кнопка", textAlign: TextAlign.center),
                    Padding(padding: EdgeInsets.all(10),
                      child:DefaultButton(buttonText: "Default Button", onPressed: () {}),
                    ),
                    Text("Поле для аутентификации", textAlign: TextAlign.center),
                    Padding(padding: EdgeInsets.all(10),
                        child:AuthRow(textPlaceholder: "Email Address",)
                    ),
                    Text("Слайд-кнопка", textAlign: TextAlign.center),
                    SliderButton(),
                    Text("Свойство машины", textAlign: TextAlign.center),
                    VehicleParameter(paramIcon: Icon(Icons.power), parameter: "Power", value: "35 hp",),
                    Text("Кнопка марки авто", textAlign: TextAlign.center),
                    ManufacturerButton(manufacturerLogoPath: 'assets/images/bmw_logo.png', manufacturerName: "BMW", onPressed: () {}),
                    Text("Карточка платежной карты", textAlign: TextAlign.center),
                    CreditCardPanel(userCard: andrewCard,),
                    CreditCardPanel(userCard: daryaCard,),
                    CreditCardPanel(userCard: unionandrewCard,),
                    CreditCardPanel(userCard: mirdaryaCard,),
                    Text("Карточка платежной карты", textAlign: TextAlign.center),
                    VehicleCard(),
                  ],
                )
              ]
          ),
        ),
    );
  }
}

