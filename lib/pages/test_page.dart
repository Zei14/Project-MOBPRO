import 'package:countdown_progress_indicator/countdown_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_kp/models/question_model.dart';
import 'package:project_kp/pages/result_page.dart';

class TestPage extends StatefulWidget {
  final QuestionModel questionModel;
  final String username;
  const TestPage(
      {super.key, required this.questionModel, required this.username});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final controller = CountDownController();
  int index = 0;
  int result = 0;

  @override
  void initState() {
    // TODO: implement initState
    print('USERNAME : ' + widget.username);
    print('QUESTIONS :' + widget.questionModel.data.length.toString());
    super.initState();
  }

  void navigate(String optionChar) {
    if (optionChar == (widget.questionModel.data[index].correctOption)) {
      result++;
      print('HASIL : ' + result.toString());
    }
    if (index < widget.questionModel.data.length - 1) {
      setState(() {
        index++;
      });
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ResultPage(result: result)),
      );
    }
  }

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${index + 1} / ${widget.questionModel.data.length.toString()}',
                        style: GoogleFonts.montserrat(
                            fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        widget.username,
                        style: GoogleFonts.montserrat(
                            fontSize: 18, color: Colors.white),
                      )
                    ]),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: CountDownProgressIndicator(
                  controller: controller,
                  valueColor: Colors.red,
                  backgroundColor: const Color.fromARGB(255, 247, 248, 248),
                  initialPosition: 0,
                  duration: 60,
                  text: 'detik',
                  onComplete: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  result: result,
                                )))
                        .then((value) {
                      setState(() {});
                    });
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(widget.questionModel.data[index].question,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      color: Colors.white,
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  navigate("a");
                },
                child: OptionWidget(
                  color: Colors.blueGrey,
                  optionChar: "A",
                  optionDetail: widget.questionModel.data[index].optionA,
                ),
              ),
              GestureDetector(
                onTap: () {
                  navigate("b");
                },
                child: OptionWidget(
                  color: Colors.blueGrey,
                  optionChar: "B",
                  optionDetail: widget.questionModel.data[index].optionB,
                ),
              ),
              GestureDetector(
                onTap: () {
                  navigate("c");
                },
                child: OptionWidget(
                  color: Colors.blueGrey,
                  optionChar: "C",
                  optionDetail: widget.questionModel.data[index].optionC,
                ),
              ),
              GestureDetector(
                onTap: () {
                  navigate("d");
                },
                child: OptionWidget(
                  color: Colors.blueGrey,
                  optionChar: "D",
                  optionDetail: widget.questionModel.data[index].optionD,
                ),
              ),
            ],
          )),
    ));
  }
}

class OptionWidget extends StatelessWidget {
  final String optionChar;
  final String optionDetail;
  final Color color;
  const OptionWidget({
    Key? key,
    required this.optionChar,
    required this.optionDetail,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        child: Row(children: [
          Text(optionChar,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                color: Colors.white,
              )),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(optionDetail,
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: Colors.white,
                )),
          ),
        ]),
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}
