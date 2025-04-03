import 'package:demo/module/sec/sec_details.dart';
import 'package:flutter/material.dart';

class SecView extends StatelessWidget {
  const SecView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecDetails()));
          },
          child: Container(color: Colors.red, child: Text("data")),
        ),
      ),
    );
  }
}
