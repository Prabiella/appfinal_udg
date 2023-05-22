import 'package:flutter/material.dart';
import 'package:flutter_xd/screens/home_carrusel.dart';
import 'package:flutter_xd/screens/home_movie_slider.dart';

import 'package:flutter_xd/screens/home_row.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text('ESTREAMANIA udg'),
        backgroundColor: Colors.redAccent,
        centerTitle:true,
        ),


       body: SingleChildScrollView(
        child: Center (
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              HomeCarrusel(),
             /* Text('Titulo'),
              Text('Descripción'), */
              RowPlesiHome(),
              MovieSlider(),
             ],

          ),
        ),
        ), 



    /*    body: Center(
          
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              HomeCarrusel(),
             /* Text('Titulo'),
              Text('Descripción'), */
              RowPlesiHome(),
              HomeGrid(),

             
            ],

          ),
         

      ), */

      

    );
  }

}