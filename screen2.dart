import 'package:flutter/material.dart';
import 'package:pet_ui/configuration.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blueGrey,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Hero(
              tag: 1,
              child: Align(
                child: Image.asset('assets/images/pet-cat2.png'),
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 150,
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  boxShadow: listShadow,
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.grey[200],
              height: 150,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primarycolor,
                        boxShadow: listShadow),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primarycolor,
                          boxShadow: listShadow),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 50,
                      child: Center(
                        child: Text(
                          'Adoption',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    )),
                  )
                ],
              ),
              height: 150,
              decoration: BoxDecoration(
                boxShadow: listShadow,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.grey[300],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(
                      icon: Icon(Icons.share, color: Colors.white),
                      onPressed: () {
                        //Navigator.pop(context);
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
