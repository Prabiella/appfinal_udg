import 'package:flutter/material.dart';

class HomeCarrusel extends StatelessWidget{
  const HomeCarrusel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
        child: Image.asset('assets/slider_widget.png'), 
      ) 
    
    ],
  );
    
    
  
   
  }

  

}