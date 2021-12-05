
import 'package:ecalldoctorandnurse/screens/login.dart';
import 'package:ecalldoctorandnurse/screens/registration.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MyLogin(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
    },
  ));
}
