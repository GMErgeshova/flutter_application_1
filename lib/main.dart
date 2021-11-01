import 'package:flutter/material.dart';
import 'package:flutter_application_1/birinchibarak.dart';

void main() {
  runApp(const MeninTirkemem());
}

class MeninTirkemem extends StatelessWidget {
  const MeninTirkemem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: birinchibarak(),
    );
  }
}
