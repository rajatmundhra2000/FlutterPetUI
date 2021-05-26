// ignore: avoid_web_libraries_in_flutter

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pet_ui/Configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, left: 17),
      color: primarycolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 17, bottom: 3),
                    child: Text(
                      'Rajat Mundhra',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 17),
                    child: Text(
                      'Active Status',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: drawerItems
                  .map((element) => Row(
                        children: [
                          
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            element['title'],
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )
                        ],
                      ))
                  .toList(),
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
              Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
              Text(
                'Log Out',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
