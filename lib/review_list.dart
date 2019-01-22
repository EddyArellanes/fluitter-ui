import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("Brenda Paola Tristán Ruíz", "2 Reviews, 10 Photos", "I'm a Koala 🐨", "assets/img/koala.jpg"),
        new Review("Brenda Paola Tristán Ruíz", "2 Reviews, 10 Photos", "I'm a Koala 🐨", "assets/img/koala.jpg"),
        new Review("Brenda Paola Tristán Ruíz", "2 Reviews, 10 Photos", "I'm a Koala 🐨", "assets/img/koala.jpg"),
        new Review("Brenda Paola Tristán Ruíz", "2 Reviews, 10 Photos", "I'm a Koala 🐨", "assets/img/koala.jpg")
      ]      
    );
  }
}