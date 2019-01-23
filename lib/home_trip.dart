import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

class HomeTrip extends StatelessWidget{

  @override
  Widget build( BuildContext context){
    return Stack(
      children: <Widget>[            
        ListView(
          children: <Widget>[
            DescriptionPlace(
              "Twilight Princess",
              "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat no proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod",
                4),
            ReviewList()
          ],
        ),
        HeaderAppBar(),            
      ],
    );
  }
}