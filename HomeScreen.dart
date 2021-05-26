//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pet_ui/Configuration.dart';
import 'package:pet_ui/screen2.dart';
import 'package:pet_ui/screen3.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scaleFactor = 1;
  bool isdraweropen = false;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isdraweropen ? 50 : 0),
          color: Colors.white,
        ),
        transform: Matrix4.translationValues(xoffset, yoffset, 1)
          ..scale(scaleFactor),
        duration: Duration(milliseconds: 250),
        //child: Colors.white,

        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isdraweropen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xoffset = 0;
                              yoffset = 0;
                              scaleFactor = 1;
                              isdraweropen = false;
                            });
                          })
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xoffset = 230;
                              yoffset = 150;
                              scaleFactor = 0.6;
                              isdraweropen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.location_on),
                              color: primarycolor,
                              onPressed: () {}),
                          Text('India'),
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: primarycolor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primarycolor),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: primarycolor,
                    ),
                    hintText: 'Search Pet',

                    //labelText: 'Search Pet',
                    filled: true,
                    fillColor: Colors.grey[200]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(5),
              height: 60,
              child: Container(
                //color: Colors.brown,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/cat.png'),
                    Image.asset('assets/images/dog.png'),
                    Image.asset('assets/images/horse.png'),
                    Image.asset('assets/images/parrot.png'),
                    Image.asset('assets/images/rabbit.png'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 45),
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Hero(
                            tag: 1,
                            child: Align(
                              child: Image.asset('assets/images/pet-cat2.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: listShadow,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen3(),
                  ),
                );
              },
              child: Container(
                height: 240,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 45),
                            decoration: BoxDecoration(
                                color: Colors.orange[200],
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          Hero(
                            tag: 2,
                            child: Align(
                              child: Image.asset('assets/images/pet-cat1.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 60, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: listShadow,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
