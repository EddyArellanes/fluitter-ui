import 'package:flutter/material.dart';

class ButtonFloating extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _ButtonFloating();
  }
}

class _ButtonFloating extends State<ButtonFloating>{
  bool _pressed = false;

  void onPressedFav(){
     setState(() {
      _pressed = !this._pressed;
      /*Not Scaffold for now :P 
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: this._pressed ? Text("Added to Favorites ;)") : Text("Removed u.u")
      ));
      */
    });
  }
  @override
  Widget build( BuildContext context){
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: this.onPressedFav ,
      child: Icon(
        this._pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }
}