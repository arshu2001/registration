import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  List users;
   Next({super.key, required this.users});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),

      body:ListView.builder(
        itemCount: widget.users.length,
        itemBuilder: (context, index) {
        return ListTile(
          title: Column(
            children: [
              Text(widget.users[index]['name']),
              Text(widget.users[index]['email']),
              Text(widget.users[index]['mobile']),
              Text(widget.users[index]['gender']),
              Text(widget.users[index]['district']),
            ],
          ),
         

        );
      },)
    );
  }
}