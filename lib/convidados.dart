import 'package:flutter/material.dart';

class Convidados extends StatefulWidget {
  const Convidados({ Key? key }) : super(key: key);

  @override
  _ConvidadosState createState() => _ConvidadosState();
}

class _ConvidadosState extends State<Convidados> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text('Convidados'),
        ],
      ),
    );
  }
}