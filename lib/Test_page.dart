import 'package:flutter/material.dart';

class Test_page extends StatefulWidget {
  const Test_page({super.key});

  @override
  State<Test_page> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Test_page> {
  var Password = "------";
  Widget numpad(String numtext, int number) {
    return InkWell(
      onTap: () {
        setState(() {
          if (Password[0] == "-") {
            Password = Password.replaceRange(0, 1, number.toString());
          } else if (Password[1] == "-") {
            Password = Password.replaceRange(1, 2, number.toString());
          } else if (Password[2] == "-") {
            Password = Password.replaceRange(2, 3, number.toString());
          } else if (Password[3] == "-") {
            Password = Password.replaceRange(3, 4, number.toString());
          } else if (Password[4] == "-") {
            Password = Password.replaceRange(4, 5, number.toString());
          } else if (Password[5] == "-") {
            Password = Password.replaceRange(5, 6, number.toString());
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.black,
            width: 1,
          )),
          child: Column(
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                numtext,
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget numX(String numtext, int number) {
    return InkWell(
      onTap: () {
        setState(() {
          Password = "------";
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 70,
          height: 70,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.white,
            width: 0,
          )),
          child: Column(
            children: [
              Text(
                "X",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Delebut() {
    return InkWell(
      onTap: () {
        setState(() {
          if(Password[5]!="-"){
            Password = Password.replaceRange(5, 6, "-");
          }else if(Password[4]!="-"){
            Password = Password.replaceRange(4, 5, "-");
          }else if(Password[3]!="-"){
            Password = Password.replaceRange(3, 4, "-");
          }else if(Password[2]!="-"){
            Password = Password.replaceRange(2, 3, "-");
          }else if(Password[1]!="-"){
            Password = Password.replaceRange(1, 2, "-");
          }else if(Password[0]!="-"){
            Password = Password.replaceRange(0, 1, "-");
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          child: Icon(
            Icons.backspace_outlined,
            size: 30,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.security,
                  size: 70,
                  color: Colors.black,
                ),
                Text(
                  "PIN LOGIN",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Spacer(),
                Text(Password,style: TextStyle(fontSize: 30),),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    numpad("one", 1),
                    numpad("two", 2),
                    numpad("three", 3),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    numpad("four", 4),
                    numpad("five", 5),
                    numpad("six", 6),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    numpad("seven", 7),
                    numpad("eight", 8),
                    numpad("nine", 9),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    numX("one", 1),
                    numpad("zero", 0),
                    Delebut(),
                  ],
                ),
                Spacer()
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
