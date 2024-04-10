import 'package:flutter/material.dart';
import 'package:garcia_uii_act1_0483/pantallas0483/panel0483/panel_pantalla0483.dart';

void main() => runApp(MiApplibreria());

class MiApplibreria extends StatelessWidget {
  const MiApplibreria({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Garcia Libreria0483",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true),
      home: PanelPantalla0483(),
    );
  }
}
