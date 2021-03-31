import 'package:flutter/material.dart';

class MyCustomInputBox1 extends StatefulWidget {
  String label;
  String inputHint;

  MyCustomInputBox1({this.label, this.inputHint});
  @override
  _MyCustomInputBox1State createState() => _MyCustomInputBox1State();
}

class _MyCustomInputBox1State extends State<MyCustomInputBox1> {
  bool isSubmitted = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 5),
            child: Text(
              widget.label,
              style: TextStyle(
                fontFamily: 'Product Sans',
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
        //

        //
      ],
    );
  }
}
