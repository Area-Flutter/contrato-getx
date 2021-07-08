import 'dart:io';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File foto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Ascensión'),
        centerTitle: true,
      ),
      body: _visualizarFoto(),
    );
  }

  Widget _visualizarFoto() {
    return Container(
      padding: EdgeInsets.only(top: 100.0, left: 10.0, right: 10.0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width, 
            margin: EdgeInsets.only(bottom: 5),
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Documento/Imágen', 
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Card(
                child: Column(
                  children: [
                    (foto == null) ?
                      Image(image: AssetImage('assets/no-image.png'))
                      : Image.file(foto, fit: BoxFit.fill, height: 115.0 ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}