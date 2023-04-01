import 'package:flutter/material.dart';
import 'package:shopbuzzer/helpers/constants.dart';
import 'package:shopbuzzer/views/cart/cart_view.dart';
import 'package:shopbuzzer/views/discover/discover_view.dart';
import 'package:shopbuzzer/views/notifications/notifications_view.dart';
import 'package:shopbuzzer/views/profile/profile_view.dart';
import 'package:shopbuzzer/views/search/search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<String> _titleWidgets = <String>[
    "Discover",
    "Notifications",
    "Search",
    "Shopping Cart"
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    DiscoverView(),
    NotificationsView(),
    SearchView(),
    ShoppingCartView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          _titleWidgets.elementAt(_selectedIndex),
          style: const TextStyle(
            fontSize: kBigTextSize,
            color: kBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(routeTransition(const ProfileView()));
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/ben.jpg"),
              maxRadius: kIconSize,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0,
              blurRadius: 5,
            ),
          ],
        ),
        child: BottomNavigationBar(
          // unselectedItemColor: Colors.grey,
          selectedItemColor: kPrimaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: kIconSize,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.cached_rounded),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
