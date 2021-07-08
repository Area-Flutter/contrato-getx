// import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ContratoController extends GetxController {

  var foto = ''.obs;

  Future tomarFoto() async {
     procesarImagen(ImageSource.camera);
  }

  Future procesarImagen(ImageSource origen) async {
    final _picker = ImagePicker();
    final pickedFile = await _picker.getImage(
      source: origen,
    );
    foto.value = pickedFile.path;
    print(foto);
    // update();
  }

  eliminarFoto() {
    (foto != null)
        ? Image.file(File('assets/no-image.png'), fit:BoxFit.fill, height: 115.0)
        : Image.asset( 'assets/no-image.png', fit: BoxFit.fill, height: 115.0);
    // print(foto);
  }
}
