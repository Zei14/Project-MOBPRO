import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kp/pages/home_page.dart';
import 'package:project_kp/pages/mulai.dart';

class ResultPage extends StatefulWidget {
  final int result;
  const ResultPage({Key? key, required this.result}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/trophy.png',
                  width: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Hore!!! Nilai kamu " + widget.result.toString(),
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mulai()),
                    );
                  },
                  child: Text("Try Again?"),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text("Back to Home Page"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
