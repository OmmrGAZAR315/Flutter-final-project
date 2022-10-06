import 'package:flutter/material.dart';
import 'package:graduationproject/components/favComponent.dart';
import 'package:graduationproject/components/listData.dart';

class fav extends StatelessWidget {

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
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 5),
                  child: Expanded(
                    child: Image.asset(
                      "images/McDonalds-logo.png",
                      height: 100,
                    ),
                  ),
                ),
              )),
          Expanded(
              child: GridView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: basicModel.DataList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (context, index) {
              return favComponent(index:index);
            },
          )),
        ],
      ),
    ));
  }
}
