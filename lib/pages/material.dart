import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kp/models/question_model.dart';
import 'package:project_kp/pages/home_page.dart';

class Materi extends StatefulWidget {
  const Materi({super.key});

  @override
  State<Materi> createState() => _MulaiState();
}

class _MulaiState extends State<Materi> {
  late QuestionModel questionModel;
  TextEditingController usernameController = TextEditingController();

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
        title: Text("Material"),
        backgroundColor:
            Color.fromARGB(255, 164, 162, 159), // Pastel Blue color
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://preview.redd.it/odo6bmrdq3a61.png?width=1404&format=png&auto=webp&s=b372e88dd2cfbeb1b303b22df7527954dcde3897',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "> Rumus Present Perfect Tense",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "(+)  S + Have/Has + V3",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Ex : Fauzan has been here",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "(-)  S + have/has + not + V3",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Ex : i have not been hungry",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "(?)  have/has + S + V3",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Ex : Have you been to Bali? ",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "> Question Tag",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "1. Positive Statement, Negative Question Tag",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Ex : “You love cats, dont you?”",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "2. Negative Statement, Positive Question Tag",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Ex : “You dont like spiders, do you?”",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "3. Imperative Statement Question Tag",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Ex : “Open the door, will you?”",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "4. Positive Statements with Positive Question Tags",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Ex : “She is going ahead with her decision, is she?”",
                    style: GoogleFonts.montserrat(
                      fontSize: 19,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
