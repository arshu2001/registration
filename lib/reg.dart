

import 'package:flutter/material.dart';
import 'package:regform/next.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var name = TextEditingController();
  var email = TextEditingController();
  var num = TextEditingController();

  List l1=[];
  
  String? gender = "";
  String? dropdownvalue = 'Kozhikode';

  var items = [
    "Kannur",
    "Kozhikode",
    "Kollam",
    "Trissur",
  ];
  var res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Registration Form',
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 4,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    'Name :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 20),
                  child: SizedBox(
                    width: 250,
                    height: 40,
                    child: TextFormField(
                      controller: name,
                      keyboardType: TextInputType.text,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    'Email :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 20),
                  child: SizedBox(
                    width: 250,
                    height: 40,
                    child: TextFormField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Text(
                    'Number :',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: SizedBox(
                    width: 250,
                    height: 40,
                    child: TextFormField(
                      controller: num,
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(enabledBorder: OutlineInputBorder()),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Text('Gender',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 140,
                      child: RadioListTile(
                          title: Text('male'),
                          value: 'male',
                          groupValue: gender,
                          onChanged: (value) {
                           setState(() {
                              gender = value.toString();
                           });
                          }),
                    ),
                    SizedBox(
                      width: 150,
                      child: RadioListTile(
                          title: Text('female'),
                          value: 'female',
                          groupValue: gender,
                          onChanged: (value) {
                           setState(() {
                              gender = value.toString();
                           });
                          }),
                    ),
                    SizedBox(
                      width: 140,
                      child: RadioListTile(
                          title: Text('other'),
                          value: 'other',
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          }),
                    ),
                    Row(
                      children: [
                        Text('District:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        DropdownButton(
                          
                          value: dropdownvalue,
                          icon: Icon(Icons.arrow_drop_down),
                          items: items.map((String items){
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                            );
                        }).toList(),
                        onChanged: (String? newValue){
                          setState(() {
                            dropdownvalue = newValue;
                          });
                        }
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        print(name.text);
                        print(email.text);
                        print(num.text);
                        print(gender);
                        print(dropdownvalue);

                        l1.add({'name':name.text,'email':email.text,'mobile':num.text,'gender':gender,'district':dropdownvalue});
                        print(l1);

                      },
                      child: Text('Submit')),
                  ElevatedButton(
                      onPressed: () {
                        name.clear();
                        email.clear();
                        num.clear();
                        
                      },
                      child: Text('cancel')),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => Next(users:l1),
                        ));
                    
                  },
                  child: Text('Next'))    
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}