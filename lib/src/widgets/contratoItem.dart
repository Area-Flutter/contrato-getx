import 'dart:io';

import 'package:flutter/material.dart';
import 'package:formvalidation/src/controllers/contrato_controller.dart';
import 'package:formvalidation/src/widgets/home_page.dart';
import 'package:get/get.dart';

class ContratoItem extends StatefulWidget {
  @override
  _ContratoItemState createState() => _ContratoItemState();
}

class _ContratoItemState extends State<ContratoItem> {

  final contratoCtrl = Get.put(ContratoController());
  File foto;  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color.fromRGBO(0, 69, 99, 1),
              width: 3,
            ),
          ),
          child: Column(
            children: [
              (foto != null)
                    ? Image.file(foto)
                    : Image.asset( 'assets/no-image.png', fit: BoxFit.fill, height: 115.0),
              Container(
                padding: const EdgeInsets.all(0.0), 
              ),
              Padding(
                padding: EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      icon: Icon( 
                        Icons.remove_red_eye_rounded,
                        color: Color.fromRGBO(0, 69, 99, 1),
                      )
                    ),
                    IconButton(
                      onPressed: () => contratoCtrl.tomarFoto(), 
                      icon: Icon( 
                        Icons.camera_alt_sharp,
                        color: Color.fromRGBO(0, 69, 99, 1),
                      )
                    ),
                    IconButton(
                      onPressed: contratoCtrl.eliminarFoto(), 
                      icon: Icon( 
                        Icons.delete_sharp,
                        color: Colors.red,
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
          elevation: 2,
          margin: EdgeInsets.all(15.0),
      ),
    );
  }
}