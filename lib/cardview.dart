import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({
    Key? key,
    this.text = "Card View",
    this.city = "City",
    this.image = "image",
  }) : super(key: key);
  final String text;
  final String city;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Material(
              borderRadius: BorderRadius.circular(32.0),
              child: Container(
                height: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(32.0),
                ),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 229, 237),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: ImageIcon(
                                  AssetImage("assets/icons/close.png"),
                                  color: Colors.pinkAccent,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: .10,
                                  ),
                                ],
                                color: const Color.fromARGB(255, 248, 108, 155),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: ImageIcon(
                                  AssetImage("assets/icons/chat2.png"),
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Container(
                              height: 56,
                              width: 56,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: .10,
                                  ),
                                ],
                                color: const Color.fromARGB(255, 253, 24, 100),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Center(
                                child: ImageIcon(
                                  AssetImage("assets/icons/heart2.png"),
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 1.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding:
                    EdgeInsets.symmetric(vertical: 120.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(text,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700)),
                        SizedBox(width: 4.0),
                        Icon(Icons.fiber_manual_record_rounded,
                            color: Colors.green, size: 16.0)
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 8.0)),
                    Text("$city",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500)),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
