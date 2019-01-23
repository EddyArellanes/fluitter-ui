import 'package:flutter/material.dart';
import 'home_trip.dart';
import 'search_trips.dart';
import 'profile_trips.dart';
class PlatziTrips extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips>{
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrip(),
    SearchTrips(),
    ProfileTrips()    
  ];

  void onTapTapped(int index){
    setState(() {
      this.indexTap = index;      
    });
  }

  @override
  Widget build( BuildContext context){
   

    return Scaffold(
      body: widgetsChildren[this.indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: this.onTapTapped,
          currentIndex: this.indexTap,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search")
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile")
            )
          ],
        ),
      ),
    );
  }
}