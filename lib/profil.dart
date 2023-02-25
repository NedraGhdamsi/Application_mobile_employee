import 'package:flutter/material.dart';
import 'package:pfeapp/demande-cong.dart';
import 'package:pfeapp/demande_materials.dart';
import 'package:pfeapp/login.dart';
import 'package:get/get.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          " Votre compte ",
          style: TextStyle(color: Color.fromARGB(255, 5, 5, 5), fontSize: 40),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 169, 170, 170),
              ),
              child: Text('votre profile'),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Nom :'),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Prénom : '),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
              ),
              title: const Text('télephone :'),
            ),
            ListTile(
              leading: Icon(
                Icons.email_rounded,
              ),
              title: const Text('email :'),
            ),
            Container(
              width: 50,
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
                  'Modifier votre profile',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 226, 225),
                  borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(255, 230, 147, 53))),
                onPressed: () => Get.to(Login()),
                child: Text(
                  'déconnexion',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Wrap(
          direction: Axis.vertical,
          spacing: 60,
          runSpacing: 10,
          children: <Widget>[
            Column(children: <Widget>[]),
            GestureDetector(
              child: new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                color: Colors.orangeAccent,
                child: InkWell(
                    onTap: () => Get.to(Demande_mat()),
                    child: Container(
                      width: 180,
                      height: 150,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.settings, size: 40),
                            title: Text("Demande de materiels"),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Colors.orangeAccent,
              child: Container(
                  width: 180,
                  height: 150,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.lock_clock, size: 40),
                        title: Text("temps de travail"),
                      )
                    ],
                  )),
            ),
            new Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                color: Colors.orangeAccent,
                child: InkWell(
                  onTap: () => Get.to(Demande_cong()),
                  child: Container(
                      width: 180,
                      height: 150,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.message, size: 40),
                            title: Text("Demande de congés"),
                          )
                        ],
                      )),
                )),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Colors.orangeAccent,
              child: Container(
                  width: 180,
                  height: 150,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.notification_add_rounded, size: 40),
                        title: Text("les Notification"),
                      )
                    ],
                  )),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Colors.orangeAccent,
              child: Container(
                  width: 180,
                  height: 150,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.calendar_month, size: 40),
                        title: Text("Réunion et évenement"),
                      )
                    ],
                  )),
            ),
            new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Colors.orangeAccent,
              child: Container(
                  width: 180,
                  height: 150,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.contacts_rounded, size: 40),
                        title: Text("Contact Ressources humaines"),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
