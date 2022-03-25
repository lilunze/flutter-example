import 'package:flutter/material.dart';
import 'package:test123/pages/login.dart';
import './pages/home.dart';
import './pages/cart.dart';
import './pages/dashboard.dart';
import './pages/detail.dart';
import './pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '全棉时代',
      home: const BottomNavigationWidget(),
      routes: {
        "/pages/detail": (context) => const PageDetail(),
        "/pages/login": (context) => const PageLogin(),
      },
    );
  }
}

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;
  List<Widget> pages = [];
  @override
  void initState() {
    pages
      ..add(const HomePageWidget())
      ..add(const CartPageWidget())
      ..add(const DashboardPageWidget());
  }
  @override
  Widget build(BuildContext context) {
    // 底部导航组件
    return Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar:BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 158, 158, 156),
                ),
                activeIcon: Icon(
                  Icons.home_filled,
                  color: Colors.blue,
                ),
                label: '首页',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 158, 158, 156),
                ),
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                ),
                label: '购物车',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 158, 158, 156),
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                label: '我的',
              ),
            ],
          currentIndex: _currentIndex,
            onTap: (int i) {
              setState(() {
                _currentIndex = i;
              });
            },
      )
    );
  }
}
