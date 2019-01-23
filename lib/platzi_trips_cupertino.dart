import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_trip.dart';
import 'search_trips.dart';
import 'profile_trips.dart';
class PlatziTripsCupertino extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
  return Scaffold(      
    bottomNavigationBar: CupertinoTabScaffold(
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrip(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;

          }
        },
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo),
              title: Text("Home")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo),
              title: Text("Search")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo),
              title: Text("Profile")
            ),
          ]
      )
    ),
  );
 } 
}