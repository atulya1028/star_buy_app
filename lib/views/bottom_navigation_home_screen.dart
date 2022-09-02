import 'package:ecommerce_app/views/login_page/home_page/cart_screen.dart';
import 'package:ecommerce_app/views/login_page/home_page/profile_screen.dart';
import 'package:ecommerce_app/views/login_page/home_page/shop_screen.dart';
import 'package:ecommerce_app/views/login_page/home_page/super_coin_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationHomeScreen extends StatefulWidget {
  const BottomNavigationHomeScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationHomeScreen> createState() => _BottomNavigationHomeScreenState();
}

class _BottomNavigationHomeScreenState extends State<BottomNavigationHomeScreen> {
  int _selectedIndex = 0;

  static const List _screenList = [
    ShopScreen(),
    SuperCoinScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screenList.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Image.asset("images/shop.png",width: 25,
            color: _selectedIndex == 0 ? Color(0xff480cfe) : Colors.grey,
          ),
          label: "Shop"
          ),
          BottomNavigationBarItem(icon: Image.asset("images/super_coin.png",width: 10,
            color: _selectedIndex == 1 ? Color(0xff480cfe) : Colors.grey,
          ),
              label: "Super Coin",

          ),
          BottomNavigationBarItem(icon: Stack(
            children: [
              Positioned(

                child: Image.asset("images/cart.png",width: 25,
                  color: _selectedIndex == 2 ? Color(0xff480cfe) : Colors.grey,
                ),
              ),
              Positioned(
                left: 11.5,
                child: CircleAvatar(
                  backgroundColor: Color(0xfffe641a),
                  radius: 7,
                  child: Text("1",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
              label: "Cart"
          ),
          BottomNavigationBarItem(icon: Image.asset("images/profile.png",width: 25,
            color: _selectedIndex == 3 ? Color(0xff480cfe) : Colors.grey,
          ),
              label: "Profile"
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff480cfe),
        iconSize: 10,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
