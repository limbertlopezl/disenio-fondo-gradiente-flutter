import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';



class BotonesPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                 _titulos(),
                 _botonesRedondeados()
              ],
             
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6),
          end: FractionalOffset(0.0,1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final cajaRosada=Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(246, 78, 188, 1.0),
                Color.fromRGBO(221, 142, 172, 1.0)
              ]
            )
          ),
      )
    );




    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosada
        )
      ],
    );

  }
  
  Widget _titulos(){
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Text('Clasificacion', style: TextStyle(color: Colors.white, fontSize: 30.0,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.0),
                  Text('Clasificacion detallado de la descripcion',style: TextStyle(color: Colors.white, fontSize: 18.0),)
              ],
            ),
          ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0,),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0,),
            title: Container()
          )
        ]
      ),
    );
  }

  Widget _botonesRedondeados(){
    return Table(
      children:[
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue,Icons.border_all,'General'),
            _crearBotonRedondeado(Colors.purple,Icons.border_outer,'Visitas'),
          ]
        ),
                TableRow(
          children: [
             _crearBotonRedondeado(Colors.red,Icons.phone,'Contactos'),
             _crearBotonRedondeado(Colors.blue,Icons.local_airport,'Operaciones'),
          ]
        ),
                TableRow(
          children: [
           _crearBotonRedondeado(Colors.lightGreen,Icons.collections,'Fotos'),
             _crearBotonRedondeado(Colors.greenAccent,Icons.sync_problem,'Tareas'),
          ]
        ),
                TableRow(
          children: [
           _crearBotonRedondeado(Colors.yellow,Icons.slow_motion_video,'Otros'),
             _crearBotonRedondeado(Colors.red,Icons.voice_chat,'Videos'),
          ]
        )
      ],
    );

  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto){

    return BackdropFilter(
        filter: ImageFilter.blur(),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono, color:Colors.white, size:30.0,)
              ),
              Text(texto, style: TextStyle(color: Colors.pinkAccent)),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
    );
  }
}