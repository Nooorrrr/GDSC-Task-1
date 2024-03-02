import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
         colorScheme:
             ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 3, 143, 33)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is an app bar',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromARGB(255, 82, 43, 158),
        ),
        body: Column(children: [
          Expanded(
            child: SizedBox(
              child: Image.asset(
                'Assets/image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text('This is a text',
                      style: TextStyle(
                        color: Color.fromARGB(255, 82, 43, 158),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  Text('My name is Noor ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 82, 43, 158),
                        fontSize: 25,
                      )),
                ],
              ),
              Icon(
                Icons.star,
                color: Color.fromARGB(255, 82, 43, 158),
                size: 50,
              )
            ],
          )),
        ]),
      ),
    );
  }
}
