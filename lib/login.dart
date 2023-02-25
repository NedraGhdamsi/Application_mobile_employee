import 'package:flutter/material.dart';
import 'package:pfeapp/profil.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController pwdcontroller = TextEditingController();
  Login() {
    String user = "nedra";
    String pwd = "ghdamsi";
    if (usercontroller.text == "" && pwdcontroller.text == "") {
      print("les données sont vide");
    }
    if (usercontroller.text == user && pwdcontroller.text == pwd) {
      print(" username ${usercontroller.text} password${pwdcontroller.text}");
      usercontroller.clear();
      pwdcontroller.clear();
      Get.to(Profil());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 230, 211, 211),
      ),
      backgroundColor: Color.fromARGB(255, 230, 211, 211),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 70,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Container(
                      width: 200, child: Image.asset('assets/image/img1.png')),
                ),
              ),
              Container(
                width: 350,
                height: 350,
                color: Color.fromARGB(255, 248, 248, 248),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 30, bottom: 3),
                      child: TextField(
                        controller: usercontroller,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 196, 194, 194),
                            focusColor: Color.fromARGB(255, 196, 194, 194),
                            filled: true,
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 126, 125, 125)),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            icon: Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 148, 150, 150),
                            ),
                            labelText: 'Email',
                            hintText: 'Entrer votre Email'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 12.0, top: 15, bottom: 3),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: pwdcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 196, 194, 194),
                            focusColor: Color.fromARGB(255, 196, 194, 194),
                            filled: true,
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 126, 125, 125)),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            icon: Icon(
                              Icons.key,
                              color: Color.fromARGB(255, 148, 150, 150),
                            ),
                            labelText: 'Mot de passe',
                            hintText: 'Entrer votre mot de passe'),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.blue,
                      ),
                      onPressed: () {},
                      child: Text('Mot de passe oublier ?'),
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
                        onPressed: () {
                          Login();
                        },
                        child: Text(
                          'Connexion',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
