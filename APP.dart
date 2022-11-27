import 'package:flutter/material.dart';

const Color white = Color.fromARGB(255, 255, 255, 255);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         drawer: Drawer(
    // Populate the Drawer in the next step.
   // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.yellow,
        ),
        child: FlutterLogo(),
      ),
       
      ListTile(
        leading: const Icon(
      Icons.attach_money,
      color: Colors.red,
      size: 30.0,
          ),
        title: const Text('Saldos e Extratos'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: const Icon(
      Icons.payments,
      color: Colors.red,
      size: 30.0,
          ),
        title: const Text('Pagamentos'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: const Icon(
      Icons.receipt,
      color: Colors.red,
      size: 30.0,
          ),
        title: const Text('Comprovantes'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: const Icon(
      Icons.data_exploration,
      color: Colors.red,
      size: 30.0,
          ),
        title: const Text('Investimentos'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: const Icon(
      Icons.qr_code,
      color: Colors.red,
      size: 30.0,
          ),
        title: const Text('Pix'),
                onTap: () {
         
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
  ),
        appBar: AppBar(
        title: const Text('Bradesco Celular')
        ),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Dashboard!',
      style: TextStyle(color: Colors.red.withOpacity(1.0)),
    );
  }
}
