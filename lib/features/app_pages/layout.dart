import 'package:car_rental_app/features/app_pages/profile/profile.dart';
import 'package:car_rental_app/features/app_pages/vehicle_list/vehicle_list.dart';
import 'package:flutter/material.dart';

import 'favorite_vehicle/favorite_vehicle.dart';
import 'orders_history/orders_history.dart';




//layout page
class LayoutPage extends StatefulWidget
{
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage>
{
  int bottomSelectedIndex = 1;
  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        label:'',
        icon: new Icon(Icons.home_filled),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: new Icon(Icons.favorite),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.message),
      ),
      BottomNavigationBarItem(
        label: '',
        icon: Icon(Icons.person),
      )
    ];
  }

  PageController pageController = PageController(
    initialPage: 1,
    keepPage: true,
  );
  Widget buildPageView() {
    return PageView(

      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        VehicleList(),
        FavoriteVehicle(),
        OrdersHistory(),
        Profile()
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: buildPageView(),
        bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: buildBottomNavBarItems(),
              unselectedItemColor: Colors.black,
              selectedItemColor: Color(0xFFC3E54B),
              currentIndex: bottomSelectedIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (index) {
                bottomTapped(index);
              },
            ),
          ),
    );
  }
}