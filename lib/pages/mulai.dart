import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kp/models/question_model.dart';
import 'package:project_kp/pages/home_page.dart';
import 'package:project_kp/pages/test_page.dart';
import 'package:http/http.dart' as myHttp;

class Mulai extends StatefulWidget {
  const Mulai({super.key});

  @override
  State<Mulai> createState() => _MulaiState();
}

class _MulaiState extends State<Mulai> {
  late QuestionModel questionModel;
  TextEditingController usernameController = TextEditingController();

  final String url =
      "https://script.google.com/macros/s/AKfycbzXYW9NeVuU6sVCL70C5M9_r5kdvesIu5rxSJD7zb0nhW99V4l_lz9V8c5uc7c876un/exec";

  void getAllData(String username) async {
    try {
      var response = await myHttp.get(Uri.parse(url));
      questionModel = QuestionModel.fromJson(json.decode(response.body));
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TestPage(
                questionModel: questionModel,
                username: username,
              )));
    } catch (err) {
      print('ERROR : ' + err.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://wallpaperbat.com/img/456081-wiektor-graffiti-kniga-twortchieskij-obrazowatielnyj-fon-doska-in-2020-graffiti-books-powerpoint-background-design-book-background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("START",
                  style: GoogleFonts.montserrat(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      hintText: "Input Username",
                      fillColor: Color.fromARGB(255, 253, 253, 253),
                      filled: true),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    getAllData(usernameController.text);
                  },
                  child: Text("START")),
            ]),
          ),
        ),
      ),
    );
  }
}
