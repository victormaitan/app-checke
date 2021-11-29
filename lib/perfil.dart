import 'package:flutter/material.dart';
import 'login.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 10),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Respond to button press
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const Login()));
              },
              child: const Text('LOGOUT'),
              style: ElevatedButton.styleFrom(primary: Colors.orange),
            ),
          ),
        ),
      ],
    );
  }
}
