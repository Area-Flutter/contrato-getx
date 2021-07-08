import 'package:flutter/material.dart';

class ContratoHeader extends StatelessWidget {

  final String text;
  final double fontSize;

  const ContratoHeader({
    Key key, 
    this.text,
    this.fontSize
  });
  
  @override
  Widget build(BuildContext context) {
     return Container(
       width: MediaQuery.of(context).size.width, 
       margin: EdgeInsets.only(bottom: 10),
       padding: EdgeInsets.all(5),
       child: Align(
         alignment: Alignment.centerLeft,
         child: Text(
           text, 
           style: TextStyle(
             fontSize: fontSize,
             fontWeight: FontWeight.bold,
           ),
         ),
       ),
     );
  }
}