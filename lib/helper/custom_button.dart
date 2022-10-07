import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  double btnHight;
  double btnwidth;
  Color btnColor;
  String btnText;
  Color btnTextColor;
  CustomButton({Key? key,
    required this.btnHight,
    required this.btnwidth,
    required this.btnColor,
    required this.btnText,
    required this.btnTextColor,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30,left: 30),
      child: Container(
        height: widget.btnHight,
        width: widget.btnwidth,
        color: widget.btnColor,
        child: Center(
            child: Text(widget.btnText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: widget.btnTextColor,
              ),
            )),
      ),
    );
  }
}
