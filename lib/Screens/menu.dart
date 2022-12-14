import 'package:flutter/material.dart';
import 'package:graduationproject/Screens/onTap.dart';
import 'package:graduationproject/components/customAppBar.dart';
import 'package:graduationproject/components/customDesign.dart';
import 'package:graduationproject/components/listData.dart';

class menu extends StatefulWidget {
  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Hero(
                  tag: "toto",
                  child: customAppBar()),
            ),
          ),
          Expanded(
              child: GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: basicModel.DataList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.56,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => onTap(index: index)));
                  },
                  child: customDesign(index: index));
            },
          )),
        ],
      ),
    ));
  }
}
