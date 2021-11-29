// ignore_for_file: unnecessary_const

import 'package:checke/convidados.dart';
import 'package:checke/eventos.dart';
import 'package:checke/historico.dart';
import 'package:checke/login.dart';
import 'package:checke/perfil.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Historico(),
    Eventos(
      items: [
        'CASE 21',
        'Front in Sampa',
        'LatinoWare',
        'Next Level Week',
        'Hackathon Nasa SpaceApps',
        'RedFog',
        'HackMS',
        'Campus Party',
        'Devcamp',
        'Futurecom',
        'Gramado Summit',
        'A Google Day'
      ],
    ),
    Convidados(),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checke',
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Histórico',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num),
            label: 'Eventos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Convidados',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        backgroundColor: Colors.orange,
        elevation: 0,
        // iconSize: 30,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
