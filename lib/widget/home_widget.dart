// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool visibleBalance = true;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Let's save\nour money here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 60,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFD5E4FB),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Image.asset(
                            'assets/ic_person.png',
                            width: 45,
                            height: 45,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Already saved",
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () =>
                            setState(() => visibleBalance = !visibleBalance),
                        child: Icon(
                          visibleBalance
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 24,
                          color: Color(0xFF0CDA95),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        visibleBalance ? "Rp. 4.000.000" : "Rp. x.xxx.xxx",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 280,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: widthScreen,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFFE3EDFC),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    Positioned(
                      bottom: 24,
                      left: 16,
                      right: 16,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/saly-10.png',
                            width: widthScreen / 2,
                            height: widthScreen / 2,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            width: widthScreen,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Buy a work desk",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      child: Text(
                                        "1 month left",
                                        style: TextStyle(
                                          color: Color(0xFFA31010),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xFFA31010).withOpacity(0.15),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      "Rp. 400.000 - ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF145FD2),
                                      ),
                                    ),
                                    Text(
                                      "Rp. 500.000",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Stack(
                                  children: [
                                    Container(
                                      width: widthScreen,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xFF145FD2).withOpacity(0.15),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    Container(
                                      width: (widthScreen - 128) * 0.75,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF145FD2),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color(0xFFEDE8FD),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/saly-1.png',
                            width: 100,
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(8),
                            width: widthScreen,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Go abroad",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      "Rp. 100.000 ",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF145FD2),
                                      ),
                                    ),
                                    Text(
                                      "- Rp. 5.000.000",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color(0xFFFAE8FD),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/saly-3.png',
                            width: 100,
                            height: 100,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(8),
                            width: widthScreen,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "New Vehicle",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      "Rp. 100.000 ",
                                      style: TextStyle(
                                        fontSize: 9,
                                        color: Color(0xFF145FD2),
                                      ),
                                    ),
                                    Text(
                                      "- Rp. 5.000.000",
                                      style: TextStyle(fontSize: 9),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
