import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final _value1 = TextEditingController();
  final _sum = TextEditingController();
  final _sub = TextEditingController();
  final _multiply = TextEditingController();
  final _div = TextEditingController();
  final _value2 = TextEditingController();
  int answer = 0, answer1 = 0;
  double answer3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        title: Title(
          color: Colors.black,
          child: Text("Welcome"),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Lets Do Some \n Calculations",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    child: TextFormField(
                      controller: _value1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Number1',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: _value2,
                      decoration: InputDecoration(
                        labelText: 'Number2',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "---Calculations---",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(100, 50)),
                    onPressed: () {
                      _sum.text =
                          (int.parse(_value1.text) + int.parse(_value2.text))
                              .toString();
                    },
                    child: Text("SUM"),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      controller: _sum,
                      keyboardType: TextInputType.none,
                      decoration: InputDecoration(
                        labelText: 'Sum',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(150, 50)),
                    onPressed: () {
                      answer1 =
                          int.parse(_value1.text) - int.parse(_value2.text);
                      _sub.text = answer1.toString();
                    },
                    child: Text("SUBSTRACT"),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      controller: _sub,
                      keyboardType: TextInputType.none,
                      decoration: InputDecoration(
                        labelText: 'SUB',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(170, 50)),
                    onPressed: () {
                      _multiply.text =
                          (int.parse(_value1.text) * int.parse(_value2.text))
                              .toString();
                    },
                    child: Text("MULTIPLICATION"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      controller: _multiply,
                      keyboardType: TextInputType.none,
                      decoration: InputDecoration(
                        labelText: 'MUL',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(fixedSize: Size(120, 50)),
                    onPressed: () {
                      answer3 = double.parse(_value1.text) /
                          double.parse(_value2.text);
                      _div.text = answer3.toStringAsFixed(2);
                    },
                    child: Text("Division"),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 150,
                    child: TextFormField(
                      controller: _div,
                      keyboardType: TextInputType.none,
                      decoration: InputDecoration(
                        labelText: 'Div',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('page2');
                  },
                  icon: Icon(
                    Icons.arrow_forward_rounded,
                    size: 35,
                    color: Colors.deepPurple,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
