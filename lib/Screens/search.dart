import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationproject/components/customContainer.dart';

import '../components/customAppBar.dart';

class search extends StatefulWidget {
  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        closeTopContainer = controller.offset > 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.fill,
                child: AnimatedContainer(
                    padding: EdgeInsets.only(),
                    duration: Duration(milliseconds: 300),
                    width: closeTopContainer ? size.width - 40 : size.width,
                    alignment: Alignment.topCenter,
                    height: closeTopContainer ? 110 : 370,
                    child: searchTopPage()),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "menu");
                  },
                  child: ListView.builder(
                    controller: controller,
                    physics: BouncingScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index) => Stack(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        customContainer(
                          texxt: "Offers",
                          containerColor: Color(0xffF2770F),
                          topMargin: 0,
                          image: "images/Grand-Share (Custom).png",
                        ),
                        customContainer(
                          texxt: "Burgers",
                          containerColor: Color(0xffF1BE08),
                          topMargin: 120,
                          image: "images/bigMc (Custom).png",
                        ),
                        customContainer(
                          texxt: "Chickens",
                          containerColor: Color(0xff4AC103),
                          topMargin: 230,
                          image: "images/McChicken (Custom).png",
                        ),
                        customContainer(
                          texxt: "Ice Creams",
                          containerColor: Colors.pink,
                          topMargin: 345,
                          image: "images/sundae.png",
                        ),
                        customContainer(
                          texxt: "Milk Shake",
                          containerColor: Color(0xff2BAAE6),
                          topMargin: 460,
                          image: "images/milkshake-removebg-preview.png",
                        ),
                        customContainer(
                          texxt: "Hot Drinks",
                          containerColor: Color(0xffAD5DBE),
                          topMargin: 565,
                          image: "images/hotAmericano-removebg-preview.png",
                        ),
                        customContainer(
                          texxt: "Soft Drinks",
                          containerColor: Colors.black38,
                          topMargin: 670,
                          image: "images/Calories_in_McDonalds_Diet_Coke.png",
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class searchTopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Hero(tag: "toto", child: customAppBar()),
          Row(
            children: [
              Container(
                width: 210,
                child: Text("Discover New Flavors",
                    style:
                        TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                  width: size.width - 130,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        filled: true,
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          size: 30,
                          color: Colors.black54,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                        fillColor: Colors.grey[200]),
                  )),
              SizedBox(
                width: 20,
              ),
              //tune button
              Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xffFFFFFF)),
                  child: Icon(
                    Icons.tune,
                    color: Colors.black,
                    size: 30,
                  )),
            ],
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.only(top: 25, bottom: 25),
            child: Text(
              "CATEGORIES",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
