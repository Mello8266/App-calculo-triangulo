import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}):super(key: key)

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),

      body: Center(
        child: Text(
          'Flutter é legal ${controller.value}',
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}

