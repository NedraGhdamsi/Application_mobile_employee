import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:file_picker/file_picker.dart';

class Demande_cong extends StatefulWidget {
  const Demande_cong({super.key});

  @override
  State<Demande_cong> createState() => _Demande_congState();
}

class _Demande_congState extends State<Demande_cong> {
  @override
  Widget build(BuildContext context) {
    TextEditingController datedInputController = TextEditingController();
    TextEditingController datefInputController = TextEditingController();
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
                      'Demande de congée',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Container(
                    width: 350.0,
                    child: Row(children: <Widget>[
                      Container(
                          width: 170.0,
                          child: Card(
                            color: Colors.grey,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Date début',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 166, 167, 168),
                                          width: 1)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 163, 164, 165),
                                          width: 1)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 150, 152, 153),
                                          width: 1)),
                                ),
                                controller: datedInputController,
                                readOnly: true,
                                onTap: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime(2050));

                                  if (pickedDate != null) {
                                    datedInputController.text =
                                        pickedDate.toString();
                                  }
                                },
                              ),
                            ),
                          )),
                      Container(
                        width: 170.0,
                        child: Card(
                          color: Colors.grey,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'Date Fin',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 166, 167, 168),
                                        width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 163, 164, 165),
                                        width: 1)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 150, 152, 153),
                                        width: 1)),
                              ),
                              controller: datefInputController,
                              readOnly: true,
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2050));

                                if (pickedDate != null) {
                                  datefInputController.text =
                                      pickedDate.toString();
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ])),
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
                    width: 370.0,
                    child: Card(
                        color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.fiber_dvr_rounded),
                                border: InputBorder.none,
                                hintText: "preuve "),
                            maxLines: 3, //or null
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
