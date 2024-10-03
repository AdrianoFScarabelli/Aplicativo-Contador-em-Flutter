import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:primeiro_app/app_controller.dart';

int counter = 0;
int plus = 1;
int min = 1;

class HomePage extends StatefulWidget{

  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  //int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 7, 100, 10),
              ),
              currentAccountPicture: ClipOval(
                child: Image.asset('assets/images/logo2.png'),
              ), 
              accountName: Text("Adrian13"), 
              accountEmail: Text("adrianoscarabelli@gmail.com")
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              subtitle: Text("Tela de incio"),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          CustomSwitch(),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Container(
              height:50,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 12
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Contador: $counter",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: const Color.fromARGB(255, 5, 125, 10),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                counter = counter+plus;
                              });
                            },
                          ),
                          FloatingActionButton(
                            backgroundColor: const Color.fromARGB(255, 5, 125, 10),
                            child: Icon(
                              Icons.exposure_zero,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                counter = 0;
                              });
                            },
                          ),
                          FloatingActionButton(
                            backgroundColor: const Color.fromARGB(255, 5, 125, 10),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                counter = counter-min;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height:20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 12
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Aumentar: $plus",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: const Color.fromARGB(255, 5, 125, 10),
                            child: Icon(
                              Icons.exposure_plus_1,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                plus++;
                              });
                            },
                          ),
                          FloatingActionButton(
                            backgroundColor: const Color.fromARGB(255, 5, 125, 10),
                            child: Icon(
                              Icons.exposure_minus_1,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                if(plus<=1){
                                  plus = 1;
                                }
                                else{
                                  plus--;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height:20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 12, bottom: 12
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Decrementar: $min",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            backgroundColor: const Color.fromARGB(255, 5, 125, 10),
                            child: Icon(
                              Icons.exposure_plus_1,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                min++;
                              });
                            },
                          ),
                          FloatingActionButton(
                            backgroundColor: const Color.fromARGB(255, 5, 125, 10),
                            child: Icon(
                              Icons.exposure_minus_1,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                if(min<=1){
                                  min = 1;
                                }
                                else{
                                  min--;
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.darkTheme,
      onChanged: (value){
        AppController.instance.changeTheme();
      },
      activeColor: const Color.fromARGB(255, 5, 125, 10),
    );
  }
}