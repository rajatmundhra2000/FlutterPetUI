import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primarycolor = Color(0xff416d6d);

List<BoxShadow> listShadow = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];

List<Map> categories = [
  {'name': 'Cat', 'iconPath': 'images/cat.png'},
  {'name': 'Dog', 'iconPath': 'images/dog.png'},
  {'name': 'Horse', 'iconPath': 'images/horse.png'},
  {'name': 'Parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'Rabbit', 'iconPath': 'images/rabbit.png'},
];

List<Map> drawerItems = [
  {'icon': FontAwesomeIcons.paw, 'title': '  Adoption'},
  {'icon': FontAwesomeIcons.mailchimp, 'title': '  Donation'},
  {'icon': FontAwesomeIcons.plus, 'title': '  Add Pet'},
  {'icon': FontAwesomeIcons.heart, 'title': '  Favourite'},
  {'icon': FontAwesomeIcons.userAlt, 'title': '  Profile'}
];
