import 'package:flutter/material.dart';

class customAppBar extends StatefulWidget {
  @override
  State<customAppBar> createState() => _customAppBarState();
}

class _customAppBarState extends State<customAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 55),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              "images/McDonalds-logo.png",
              height: 100,
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xffFFFFFF)),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                    size: 30,
                  )),
              Positioned(
                top: 1,
                left: 31.5,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "2",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  margin: EdgeInsets.only(top: 5),
                  width: 30.0,
                  height: 25.0,
                  decoration: new BoxDecoration(
                    color: Color(0xffFA7D10),
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
