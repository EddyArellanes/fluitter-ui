import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const hello = "AyMyWallet Si señorrr";

    return MaterialApp(
      title: 'AyMyWallet', //Task Manager Name
      theme: ThemeData(      
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        /*We are using a Custom AppBar instead appBar Attribute*/
        /*appBar: AppBar(
          title: Text( hello ),
          backgroundColor: Color.fromRGBO(81, 66, 154, 1),
          leading: Icon(Icons.arrow_back),        
        ) ,
        */
        //body: new DescriptionPlace("Twilight Princess", "It's a Game of The Legend of Zelda", 4)
        //body: new ReviewList()
        body: Stack(
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
        )
      ),
    );
  }
}
