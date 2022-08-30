import 'package:flutter/material.dart';

class customContainer extends StatelessWidget {
  customContainer(
      {required this.texxt,
      required this.topMargin,
      required this.containerColor,
      required this.image});

  String texxt;
  String image;
  double topMargin;
  Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      margin: EdgeInsets.only(top: topMargin),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 2.5)],
          image: DecorationImage(
              image: AssetImage(image), alignment: Alignment.topRight),
          color: containerColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      width: double.infinity,
      height: 140,
      child: Text(
        texxt,
        style: TextStyle(fontSize: 25, color: Colors.white),
      ),
    );
  }
}
