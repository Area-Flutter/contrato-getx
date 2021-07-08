import 'package:flutter/material.dart';
import 'package:formvalidation/src/bloc/provider.dart';
import 'package:formvalidation/src/widgets/home_page.dart';
import 'package:formvalidation/src/screens/contrato_screen.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'contrato',
        routes: {
          'home'  : ( BuildContext context ) => HomePage(),
          'contrato'  : ( BuildContext context ) => ContratoScreen(),
        },
        theme: ThemeData(
          primaryColor: Color.fromRGBO(0, 69, 99, 1),
        ),
      ),
    );
  }
}