import 'package:flutter/material.dart';
import 'package:hotel/pages/myroom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: Container(
          color: Colors.cyan,
          child: Column(
            children: [
              AppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                      ),
                      color: Colors.white,
                    ),
                  )
                ],
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                  ),
                  color: Colors.white,
                ),
                backgroundColor: Colors.cyan,
              ),
              const Text(
                "Type Your Location",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.orange.shade900,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Bouddha, Kathmandu",
                      hintStyle: TextStyle(color: Colors.grey[500])),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 100,
                    height: 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.bedroom_child_sharp,
                          color: Colors.white,
                        ),
                        Text(
                          "Hotel",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    // color: Colors.pink,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 100,
                    height: 80,
                    child: Column(
                      children: [
                        Icon(Icons.restaurant, color: Colors.white),
                        Text(
                          "Restaurant",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    // color: Colors.blue,
                    margin: EdgeInsets.only(right: 20),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow.shade800,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    width: 100,
                    height: 80,
                    child: Column(
                      children: [
                        Icon(
                          Icons.coffee,
                          color: Colors.white,
                        ),
                        Text(
                          "Cafe",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    margin: EdgeInsets.only(right: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyRoom()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.grey.shade300)),
                  width: 350,
                  height: 320,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: 350,
                              height: 350,
                              child: Image.asset(
                                'lib/images/hotel2.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 12,
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.white,
                                )),
                            Positioned(
                                right: 12,
                                bottom: 10,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Text("Rs.40"),
                                ))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: Text(
                              "Peaceful Room",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 5),
                            child: Text(
                              "Buddha, kathmandu",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 1, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 1, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 1, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 1, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              "(220 reviews)",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey.shade400),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyRoom()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.grey.shade300)),
                  width: 350,
                  height: 320,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        child: Stack(
                          children: [
                            SizedBox(
                                width: 350,
                                height: 350,
                                child: Image.asset(
                                  'lib/images/hotel.jpg',
                                  fit: BoxFit.cover,
                                )),
                            Positioned(
                                top: 10,
                                right: 12,
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.white,
                                )),
                            Positioned(
                                right: 12,
                                bottom: 10,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Text("Rs.90"),
                                ))
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 10),
                            child: Text(
                              "Awesome room Roma Velly",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 15, top: 5),
                            child: Text(
                              "Buddha, kathmandu",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 15, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 1, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 1, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 1, top: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.green,
                              )),
                          Container(
                              padding: EdgeInsets.only(left: 1, top: 5),
                              child: Icon(
                                Icons.star_border_outlined,
                                color: Colors.green,
                              )),
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              "(200 reviews)",
                              style: TextStyle(
                                  fontSize: 11, color: Colors.grey.shade400),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
