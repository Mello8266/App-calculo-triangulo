import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key})

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),

      body: Center(
        child: Text(
          'Flutter é legal',
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("Funcionou");
        },
      ),
    );
  }
}

