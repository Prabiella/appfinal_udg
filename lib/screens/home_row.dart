import 'package:flutter/material.dart';

class RowPlesiHome extends StatelessWidget{
  const RowPlesiHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[

    Expanded(
     child: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column (
        children: <Widget> [
          Image.asset('assets/destacado1.png'),
          const Text('Contenido uno', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
        ),
     ),

      ),

       Expanded(
       child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Column (
        children: <Widget> [
          Image.asset('assets/destacado2.png'),
          const Text('Contenido uno', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
        ),

       ),
      ),




/* 
   Column(
        children: const <Widget> [
         Image(image:  AssetImage('assets/destacado1.png')),
         Text('Contenido ', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
      ),
      
       Column(
        children: const <Widget> [
         Image(image:  AssetImage('assets/destacado2.png')),
        Text('Contenido dos', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 67, 51, 2), fontSize:12 )),
        ],
      ),  
       */


  ],
);
  }

}