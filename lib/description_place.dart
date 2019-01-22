import 'package:flutter/material.dart';
import 'button_inkwell.dart';
/// This class contain an single Title, Description and Number of Stars Icons
/// 
class DescriptionPlace extends StatelessWidget{
  String title;
  String description;
  int stars;

  DescriptionPlace(this.title, this.description, this.stars);

  @override
  Widget build(BuildContext context){

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        
      ),
    );
    
     final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        this.description,
        style: TextStyle( 
          fontSize: 20.0 ,           
          fontFamily: "Lato"
        ),
        //'''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eu tempus purus. Nulla facilisi. Duis vulputate, risus eu elementum vestibulum, est quam mollis felis, in viverra nibh lorem vitae erat. Fusce erat urna, mollis eu fringilla vitae, tincidunt id elit.'''
      ),
    );
    
    final title = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only( 
            top: 320.0, 
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            this.title,
            style: TextStyle( 
              fontSize: 30.0 , 
              fontWeight: FontWeight.w900,
              fontFamily: "Lato"
            ),
            textAlign: TextAlign.left,            
          )
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,             
                      
          ],
        )
      ]
    );
    final widget = Column(
      crossAxisAlignment: CrossAxisAlignment.start, //This cancell de center of the ButtonInkwell and positionate all to begin
      children: <Widget>[
        title,
        description,
        ButtonInkwell("Navigate")
      ],
    );
    return widget;
  }
}