import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  var res ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),

      body: Container(
        height: 100,
        width: 400,
        child: Text(),
      ),
    );
  }
}