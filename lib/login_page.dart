import 'package:flutter/material.dart';
//import 'home_page.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  String email = "";
  String password = "";

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 12
                  ),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Senha",
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if(email == "adrianoscarabelli@gmail.com" && password == "12") {
                            Navigator.of(context).pushNamed('/home');
                          }
                          else{
                            print("Login inválido");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'Entrar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/back.png',
              fit: BoxFit.cover,
            )),
            Container(
              color: Colors.black.withOpacity(0.4),
            ),
          _body(),
        ],
      ),
    );
  }
}