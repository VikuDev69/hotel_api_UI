import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MyRoom extends StatefulWidget {
  const MyRoom({super.key});

  @override
  State<MyRoom> createState() => _MyRoomState();
}

class _MyRoomState extends State<MyRoom> {
  var dio = Dio();

  void getData() async {
    var response =
        await dio.get('https://jsonplaceholder.typicode.com/todos/1');
    print(response.statusCode);
    print(response.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350,
                    child: Image.asset(
                      'lib/images/hotel2.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Positioned(
                      top: 30,
                      left: 100,
                      right: 100,
                      child: Column(
                        children: [
                          Text(
                            "DETAIL",
                            style:
                                TextStyle(fontSize: 22, color: Colors.white60),
                          ),
                        ],
                      )),
                  const Positioned(
                      top: 240,
                      left: 20,
                      child: Column(
                        children: [
                          Text(
                            "Lux Hotel",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                  const Positioned(
                      top: 262,
                      left: 20,
                      child: Column(
                        children: [
                          Text(
                            "Toronto",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                  Positioned(
                      top: 292,
                      right: 1,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                                size: 30,
                              ))
                        ],
                      )),
                  Positioned(
                      top: 292,
                      left: 5,
                      child: Column(
                        children: [
                          MaterialButton(
                            color: Colors.grey.shade400,
                            child: Text("84/85 reviews"),
                            onPressed: () {},
                            textColor: Colors.white54,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22))),
                          )
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                    ),
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      "Rs.1600",
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                      size: 14,
                    ),
                    Text(
                      "8 km to Centrum",
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "/per Night",
                      style: TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: MaterialButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                padding: const EdgeInsets.only(
                  left: 130,
                  right: 130,
                  top: 20,
                  bottom: 25,
                ),
                focusElevation: 20,
                height: 40,
                elevation: 2,
                onPressed: () {
                  getData();
                },
                color: Colors.purple,
                textColor: Colors.white,
                child: const Text("Book Now"),
              )),
              Container(
                width: 500,
                margin: const EdgeInsets.only(left: 32, right: 32, top: 40),
                child: const Row(
                  children: [
                    Text(
                      "Discription",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 500,
                margin: const EdgeInsets.only(left: 32, right: 32, top: 4),
                child: const Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy text of the",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                        ),
                        Text(
                          "Lorem Ipsum is simply this the end of this",
                          textDirection: TextDirection.ltr,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 500,
                margin: const EdgeInsets.only(left: 32, right: 32, top: 4),
                child: const Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy text of the print",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 50,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
