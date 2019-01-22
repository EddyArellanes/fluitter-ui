import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImage = "assets/img/people.jpg";
  String usernameText = "Eddy Arellanes Bastida";
  String detailsText = "1 Review, 5 Photos";
  String comment = "I have a lot of sleepy! 🐼";

  Review(this.usernameText, this.detailsText, this.comment, this.pathImage);

  @override
  Widget build(BuildContext context){    
    final username = Container(
      margin: EdgeInsets.only(
        left: 20.0,

      ),
      child: Text(
        this.usernameText,
        textAlign: TextAlign.left,
        style: TextStyle(          
          fontFamily: "Lato",
          fontSize: 17.0
        ),
        
      )
    );

    final userDetails = Container(
      margin: EdgeInsets.only(
        left: 20.0,

      ),
      child: Text(
        this.detailsText,
        textAlign: TextAlign.left,
        style: TextStyle(          
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color( 0xFFa3a5a7)
        ),
        
      )
    );
    
    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,

      ),
      child: Text(
        this.comment,
        textAlign: TextAlign.left,
        style: TextStyle(          
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
        
      )
    );

    final userInformation = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        username,
        userDetails,
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage( this.pathImage)
        )
      ),
    );
    
    final review = Row(
      children: <Widget>[
        photo,
        userInformation
      ],
    );
    return review;
  }
}