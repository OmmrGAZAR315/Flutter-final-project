import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listData.dart';

class customDesign extends StatefulWidget {
  customDesign({required this.index});

  int index;

  @override
  State<customDesign> createState() => _customDesignState();
}

class _customDesignState extends State<customDesign> {
  int noOrdered = 0;
  bool fav = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, left: 5, right: 5),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.only(top: 60),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                shadowColor: Colors.grey,
                elevation: 10,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 70, bottom: 10, left: 10, right: 10),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              basicModel.DataList[widget.index]["texxt"]!,
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: TextButton(
                                  style: ButtonStyle(
                                    overlayColor:
                                        MaterialStateColor.resolveWith(
                                            (states) =>
                                                Colors.red.withOpacity(0.2)),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      fav = !fav;
                                    });
                                  },
                                  child: Icon(
                                    fav ? Icons.favorite : CupertinoIcons.heart,
                                    color: Colors.red,
                                  )),
                            )
                          ],
                        ),
                        Text(
                          "from L.E." +
                              basicModel.DataList[widget.index]["Oprice"]!,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          "from L.E." +
                              basicModel.DataList[widget.index]["Dprice"]!,
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          basicModel.DataList[widget.index]["cat"]!,
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              basicModel.DataList[widget.index]["rate"]!,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 0,
                            ),
                            Container(
                              height: 60,
                              width: 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffEFEFEE)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: TextButton(
                                      style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.white),
                                      ),
                                      onPressed: () {
                                        if (noOrdered > 0) {
                                          setState(() {
                                            noOrdered--;
                                          });
                                        }
                                      },
                                      child: Text(
                                        "-",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                    ),
                                    height: 50,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                  Text(noOrdered.toString()),
                                  Container(
                                    child: TextButton(
                                      style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => Colors.white),
                                      ),
                                      onPressed: () {
                                        if (noOrdered < 10) {
                                          setState(() {
                                            noOrdered++;
                                          });
                                        }
                                      },
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20),
                                      ),
                                    ),
                                    height: 50,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -27,
              left: 10,
              child: Hero(
                tag: widget.index,
                child: Image.asset(
                  basicModel.DataList[widget.index]["image"]!,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
