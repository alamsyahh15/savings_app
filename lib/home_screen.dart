// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'widget/home_widget.dart';
import 'widget/savings_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<Widget> views = [
    HomeWidget(),
    SavingsWidget(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: views[_currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0CDA95),
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 3,
              color: Colors.grey.withOpacity(0.25),
            )
          ],
        ),
        child: BottomAppBar(
            shape: CircularNotchedRectangle(), //shape of notch
            notchMargin: 10,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: widthScreen * 0.15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    icon: Icon(
                      Icons.home,
                      color: _currentIndex == 0 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    tooltip: "Home",
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    icon: Icon(
                      Icons.list,
                      color: _currentIndex == 1 ? Colors.blue : Colors.grey,
                      size: 35,
                    ),
                    tooltip: "Savings",
                  )
                ],
              ),
            )),
      ),
    );
  }
}
