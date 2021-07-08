import 'package:flutter/material.dart';
import 'package:formvalidation/src/widgets/contratoItem.dart';
import 'package:formvalidation/src/widgets/contrato_header.dart';
// import 'package:image_picker/image_picker.dart';

class ContratoScreen extends StatefulWidget {
  @override
  _ContratoScreenState createState() => _ContratoScreenState();
}

class _ContratoScreenState extends State<ContratoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Ascensión'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: Column(
            children: [
              ContratoHeader(
                text: 'Documentación',
                fontSize: 27.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height - 180.0,
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 12.0,
                      childAspectRatio: 1.000,
                      children: [
                        ContratoItem(),
                        ContratoItem(),
                        ContratoItem(),
                        ContratoItem(),
                        ContratoItem(),
                        ContratoItem(),
                      ]
                    )
                )
              )
            ]
          )
        ),
      )
    );
  }
}