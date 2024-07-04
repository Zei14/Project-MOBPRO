import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kp/pages/home_page.dart';

class Tentang extends StatefulWidget {
  const Tentang({super.key});

  @override
  State<Tentang> createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
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
        title: Text("About Us"),
        backgroundColor:
            Color.fromARGB(255, 234, 236, 237), // Pastel Blue color
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://wallpaperbat.com/img/456081-wiektor-graffiti-kniga-twortchieskij-obrazowatielnyj-fon-doska-in-2020-graffiti-books-powerpoint-background-design-book-background.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CREATED BY",
                    style: GoogleFonts.montserrat(
                      fontSize: 26,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Fauzan Hanif (12220272)",
                    style: GoogleFonts.montserrat(
                      fontSize: 26,
                      color: Color.fromARGB(255, 247, 247, 247),
                    ),
                  ),
                  Text(
                    "Aditya Wicaksono (12220862)",
                    style: GoogleFonts.montserrat(
                      fontSize: 26,
                      color: Color.fromARGB(255, 244, 243, 243),
                    ),
                  ),
                  Text(
                    "Anis Afiana (12220707)",
                    style: GoogleFonts.montserrat(
                      fontSize: 26,
                      color: Color.fromARGB(255, 248, 245, 245),
                    ),
                  ),
                  Text(
                    "Amanda Riyana (12220573)",
                    style: GoogleFonts.montserrat(
                      fontSize: 26,
                      color: Color.fromARGB(255, 244, 243, 243),
                    ),
                  ),
                  Text(
                    "--------------------------------------",
                    style: GoogleFonts.montserrat(
                      fontSize: 26,
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
