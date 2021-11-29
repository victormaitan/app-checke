import 'dart:math';

import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
  const Historico({Key? key}) : super(key: key);

  @override
  _HistoricoState createState() => _HistoricoState();
}

class Events {
  final String dateTime;
  final String eventName;
  final String description;

  Events(
      {required this.dateTime, required this.eventName, required this.description});
}

class _HistoricoState extends State<Historico> {
  final List<Events> listOfEvents = [
    Events(dateTime: "29/11 - 22:31", eventName: "CASE 21", description: "Transamérica Expo Center"),
    Events(dateTime: "29/11 - 22:36", eventName: "Front in Sampa", description: "Live"),
    Events(dateTime: "29/11 - 22:42", eventName: "LatinoWare", description: "Centro Tecnológico Itaipú"),
    Events(dateTime: "29/11 - 22:45", eventName: "Next Level Week", description: "Live"),
    Events(dateTime: "29/11 - 22:49", eventName: "Hackathon Nasa SpaceApps", description: "Live"),
    Events(dateTime: "29/11 - 22:53", eventName: "RedFog", description: "Parque das Nações"),
    Events(dateTime: "29/11 - 22:59", eventName: "HackMS", description: "Living Lab MS"),
    Events(dateTime: "29/11 - 23:10", eventName: "A Google Day", description: "Jera"),
  ];

  TextStyle style = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: listOfEvents.length,
              itemBuilder: (context, i) {
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(40),
                      child: Row(
                        children: [
                          SizedBox(width: size.width * 0.07),
                          SizedBox(
                            child: Text(listOfEvents[i].dateTime,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                            ),
                            width: size.width * 0.24,
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(listOfEvents[i].eventName),
                                Text(
                                  listOfEvents[i].description,
                                  style: const TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 50,
                      child: Container(
                        height: size.height * 0.7,
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(45.0),
                        child: Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
