import 'package:checke/components/qrScanner.dart';
import 'package:checke/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'Checke',
      //   ),
      //   backgroundColor: Colors.amber,
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 60),
                child: Text(
                  'Checke App',
                  style: TextStyle(
                      fontSize: 46,
                      color: Colors.orange,
                      fontWeight: FontWeight.w400),
                )),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 10, bottom: 10),
              child: TextFormField(
                initialValue: '',
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 1, color: Colors.orange),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        width: 1,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 16, color: Colors.orange),
                  // errorText: snapshot.error,
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 10, bottom: 10),
              child: TextFormField(
                initialValue: '',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 1, color: Colors.orange),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        width: 1,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  labelText: 'Senha',
                  labelStyle: TextStyle(fontSize: 16, color: Colors.orange),
                  hintText: 'Mínimo 6 caracteres',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
                  // errorText: snapshot.error,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 40, bottom: 5),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Respond to button press
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text('LOGIN'),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  style: TextButton.styleFrom(primary: Colors.orange),
                  child: const Text("Esqueci minha senha"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: SizedBox(
                  child: ElevatedButton.icon(
                onPressed: () {
                  // Respond to button press
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const QRViewExample(),
                  ));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, shape: const StadiumBorder()),
                icon: const Icon(Icons.qr_code, size: 18),
                label: const Text("QR Code"),
              )),
            )
          ],
        ),
      ),
    );
  }
}
