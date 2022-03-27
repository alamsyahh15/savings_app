// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class SavingsWidget extends StatelessWidget {
  const SavingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Your Saving",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: widthScreen * 0.075),
              Row(children: [
                Expanded(
                  child: Container(
                    height: heightScreen * 0.5,
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
                          width: 250,
                          height: 250,
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
                                      fontSize: 18,
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
                                        color: Color(0xFF0B7474),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          Color(0xFF0B7474).withOpacity(0.15),
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
                                      fontSize: 14,
                                      color: Color(0xFF145FD2),
                                    ),
                                  ),
                                  Text(
                                    "Rp. 500.000",
                                    style: TextStyle(
                                      fontSize: 14,
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
                                          Color(0xFF8B0EA0).withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                  Container(
                                    width: (widthScreen - 80) * 0.15,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF8B0EA0),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.send, color: Colors.blue),
                                  Icon(Icons.add_circle,
                                      color: Color(0xFF0CDA95)),
                                  Icon(Icons.more_vert_rounded),
                                ].map((e) {
                                  return Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.symmetric(horizontal: 4),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEDEDED),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: e,
                                  );
                                }).toList(),
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
              ]),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Transaction",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListTile(
                leading: Container(
                  width: 54,
                  height: 54,
                  child: Icon(Icons.add, color: Colors.black),
                  decoration: BoxDecoration(
                    color: Color(0xFF0CDA95).withOpacity(0.25),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                title: Text(
                  "Top up DANA",
                  style: TextStyle(color: Colors.green[600]),
                ),
                subtitle: Text("Today"),
                trailing: Text("Rp. 500.000"),
              ),
              ListTile(
                leading: Container(
                  width: 54,
                  height: 54,
                  child: Icon(Icons.remove, color: Colors.black),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.25),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                title: Text(
                  "Order Food ",
                  style: TextStyle(color: Colors.red[600]),
                ),
                subtitle: Text("Today"),
                trailing: Text("Rp. 200.000"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
