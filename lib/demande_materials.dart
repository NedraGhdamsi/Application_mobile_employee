import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Demande_mat extends StatefulWidget {
  const Demande_mat({super.key});

  @override
  State<Demande_mat> createState() => _Demande_matState();
}

class _Demande_matState extends State<Demande_mat> {
  TextEditingController dateInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Color.fromARGB(255, 230, 211, 211),
      ),
      backgroundColor: Color.fromARGB(255, 230, 211, 211),
      body: SingleChildScrollView(
        child: Container(
            height: 800,
            width: 400,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Demande de materiels',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Container(
                    width: 370.0,
                    child: Card(
                      color: Colors.grey,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Date de demande',
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 166, 167, 168),
                                    width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 163, 164, 165),
                                    width: 1)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 150, 152, 153),
                                    width: 1)),
                          ),
                          controller: dateInputController,
                          readOnly: true,
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2050));

                            if (pickedDate != null) {
                              dateInputController.text = pickedDate.toString();
                            }
                          },
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    width: 370.0,
                    child: Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 3, //or null
                            decoration: InputDecoration.collapsed(
                                hintText: "materiels demmander"),
                          ),
                        ))),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    width: 370.0,
                    child: Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            maxLines: 8, //or null
                            decoration: InputDecoration.collapsed(
                                hintText: "Description........"),
                          ),
                        ))),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 226, 225),
                      borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 230, 147, 53)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Envoyer',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
