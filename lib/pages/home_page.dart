// home_page.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kp/pages/mulai.dart';
import 'package:project_kp/pages/tentang.dart';
import 'package:project_kp/pages/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://media.istockphoto.com/id/108220649/photo/old-books-in-library-shelf.jpg?s=612x612&w=0&k=20&c=5ZrB1pQzoSIc6KmqEeYuamJocnVa6rOJwmTnX9XnrM0=',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Add this line
              children: [
                //text
                Text(
                  'English Kyositsu',
                  textAlign: TextAlign.center, // center the text
                  style: GoogleFonts.montserrat(
                    fontSize: 30, // increase the font size
                    color: Colors.white,
                    fontWeight: FontWeight.bold, // make the text bold
                    letterSpacing: 2, // add some letter spacing
                    wordSpacing: 5, // add some word spacing
                  ),
                ),
                //button
                SizedBox(
                    height:
                        20), // Add some space between the text and the buttons
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 40), // set the minimum size
                    side: const BorderSide(
                        width: 1, color: Colors.black), // add a black border
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Materi()),
                    );
                  }, // Navigate to QuizScreen when pressed
                  child: const Text('M a t e r i a l'),
                ),
                SizedBox(height: 10), // Add some space between the buttons
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 40), // set the minimum size
                    side: const BorderSide(
                        width: 1, color: Colors.black), // add a black border
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Mulai()),
                    );
                  }, // Add your onPressed function here
                  child: const Text('S t a r t  Q u i z'),
                ),
                SizedBox(height: 10), // Add some space between the buttons
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 40), // set the minimum size
                    side: const BorderSide(
                        width: 1, color: Colors.black), // add a black border
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Tentang()),
                    );
                  }, // Add your onPressed function here
                  child: const Text('A B O U T  U S'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
