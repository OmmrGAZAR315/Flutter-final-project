import 'package:flutter/material.dart';
import 'package:graduationproject/components/listData.dart';

class onTap extends StatelessWidget {
  onTap({required this.index});

  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(slivers: <Widget>[
            SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    child: Text(basicModel.DataList[index]["texxt"]!,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                  background: Hero(
                      tag: index,
                      child: Image.asset(basicModel.DataList[index]["image"]!)),
                )),
            SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Text(
                    "Price:",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "L.E." + basicModel.DataList[index]["Oprice"]!,
                    style: TextStyle(
                        fontSize: 28, decoration: TextDecoration.lineThrough),
                  ),
                  subtitle: Text(
                    basicModel.DataList[index]["Dprice"]!,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: Text(
                    "Description:",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    basicModel.DataList[index]["desc"]!,
                    style: TextStyle(fontSize: 27),
                  ),
                ),
              ],
            )), // SliverList
          ]),
        ],
      ),
    );
  }
}
