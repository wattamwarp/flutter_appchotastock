import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
   SecondScreen({Key? key, required this.name}) : super(key: key);
  String name;


  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(

      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width:MediaQuery.of(context).size.width,
              child: Center(child: Text(widget.name)),
            ),
          ],
        ),
      ),
    ));
  }
}

