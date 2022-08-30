import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favComponent extends StatefulWidget {
  favComponent(
      {required this.image,
      required this.texxt,
      this.cat,
      required this.Dprice,
      required this.Oprice,
      required this.rate});

  String texxt;
  String image;
  String rate;
  String Oprice;
  String Dprice;
  String? cat;

  @override
  State<favComponent> createState() => _favComponent();
}

class _favComponent extends State<favComponent> {
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
                              widget.texxt,
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
                          "from L.E." + widget.Oprice,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          "from L.E." + widget.Dprice,
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          widget.cat!,
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              widget.rate,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
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
              child: Image.asset(
                widget.image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
