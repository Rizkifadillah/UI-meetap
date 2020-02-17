import 'package:app_meetap/src/ui/chat.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  static final String path = "lib/src/pages/lists/list2.dart";

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextStyle dropdownMenuItem =
  TextStyle(color: Colors.black, fontSize: 18);

  final primary = Colors.green[400];
  final secondary = Color(0xfff29a94);

  final List<Map> schoolLists = [
    {
      "name": "Edgewick Scchol",
      "location": "572 Statan NY, 12483",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Xaviers International",
      "location": "234 Road Kathmandu, Nepal",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Kinder Garden",
      "location": "572 Statan NY, 12483",
      "type": "Play Group School",
      "logoText":
      "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "WilingTon Cambridge",
      "location": "Kasai Pantan NY, 12483",
      "type": "Lower Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
    {
      "name": "Fredik Panlon",
      "location": "572 Statan NY, 12483",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Whitehouse International",
      "location": "234 Road Kathmandu, Nepal",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Haward Play",
      "location": "572 Statan NY, 12483",
      "type": "Play Group School",
      "logoText":
      "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Campare Handeson",
      "location": "Kasai Pantan NY, 12483",
      "type": "Lower Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child:
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 140),
                height: MediaQuery.of(context).size.height/1,
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 280,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.green,width: 2)
                              ),
                              padding: EdgeInsets.all(1),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage("https://developers.google.com/ar/develop/java/images/android-studio.png"),
                                    fit: BoxFit.cover
                                  )
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      left: 16,
                                      top: 16,
                                      child: Stack(
                                        children: <Widget>[
                                          Container(
                                            height: 35,
                                            color: Colors.green,
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Container(
                                                width: 30,
                                                height: 30,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  radius: 35,
                                                  backgroundImage: AssetImage("assets/img/logomeetap.png"),
                                                ),
                                              ),
                                              SizedBox(width: 14,),
                                              Text("Akbar",
                                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8,8,12,12),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text("Null Pointer5",
                                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Text("Detail...",
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.green),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Text("Jadi Waktu ditest itu error ada tulisan Null Pointer5...",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(2,2,20,2.0),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.bookmark_border,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                        SizedBox(width: 18,),
                                        Icon(Icons.favorite,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                        SizedBox(width: 18,),
                                        Icon(Icons.share,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Text("Error",
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.red),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 280,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.green,width: 2)
                              ),
                              padding: EdgeInsets.all(1),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage("https://1.bp.blogspot.com/-YydZlCbUyHM/XBFILhqkAZI/AAAAAAAAJxM/X-082efcbWAHbQlnMqr4FyiDEpKjemtDwCLcBGAs/s1600/resource-management.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                        left: 16,
                                        top: 16,
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              height: 35,
                                              color: Colors.green,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  width: 30,
                                                  height: 30,
                                                  child: CircleAvatar(
                                                    backgroundColor: Colors.white,
                                                    radius: 35,
                                                    backgroundImage: AssetImage("assets/img/logomeetap.png"),
                                                  ),
                                                ),
                                                SizedBox(width: 14,),
                                                Text("Akbar",
                                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8,8,12,12),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text("Null Pointer5",
                                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Text("Detail...",
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.green),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Text("Jadi Waktu ditest itu error ada tulisan Null Pointer5...",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(2,2,20,2.0),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.bookmark_border,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                        SizedBox(width: 18,),
                                        Icon(Icons.favorite,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                        SizedBox(width: 18,),
                                        Icon(Icons.share,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Text("Solve",
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.green),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 280,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.green,width: 2)
                              ),
                              padding: EdgeInsets.all(1),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage("https://developers.google.com/ar/develop/java/images/deployment-target.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                        left: 16,
                                        top: 16,
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              height: 35,
                                              color: Colors.green,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Container(
                                                  width: 30,
                                                  height: 30,
                                                  child: CircleAvatar(
                                                    backgroundColor: Colors.white,
                                                    radius: 35,
                                                    backgroundImage: AssetImage("assets/img/logomeetap.png"),
                                                  ),
                                                ),
                                                SizedBox(width: 14,),
                                                Text("Akbar",
                                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8,8,12,12),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Text("Null Pointer5",
                                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Text("Detail...",
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.green),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    child: Text("Jadi Waktu ditest itu error ada tulisan Null Pointer5...",
                                      style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(2,2,20,2.0),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 0,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.bookmark_border,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                        SizedBox(width: 18,),
                                        Icon(Icons.favorite,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                        SizedBox(width: 18,),
                                        Icon(Icons.share,color: Colors.grey,),
                                        Text("100",
                                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Text("OnProses",
                                      style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.amber),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 70,)
                  ],
                ),
              ),
//              Container(
//                padding: EdgeInsets.only(top: 145),
//                height: MediaQuery.of(context).size.height,
//                width: double.infinity,
//                child: ListView.builder(
//                    itemCount: schoolLists.length,
//                    itemBuilder: (BuildContext context, int index) {
//                      return buildList(context, index);
//                    }),
//              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 35,
                          backgroundImage: AssetImage("assets/img/logomeetap.png"),
                        ),
                      ),
//                      Container(
//                          width: 60.0,
//                          height: 60.0,
//                          child: CircleAvatar(
//                              radius: 0,
////                              backgroundColor: Colors.white70,
//                              child: CircleAvatar(
//                                  radius: 35.0,
//                                  backgroundImage:
//                                  AssetImage("assets/img/logomeetap.png")
//                              )
//                          )
//                      ),
                      Text(
                        "# MeetAp",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
//              Padding(
//                padding: const EdgeInsets.all(20.0),
//                child: Container(
//                  decoration: BoxDecoration(
//                    color: Colors.white,
//                    borderRadius: BorderRadius.circular(5.0),
//                    boxShadow: [
//                      BoxShadow(
//                        color: Colors.white70,
//                        offset: Offset(0.0, 1.5),
//                        blurRadius: 1.0,
//                        spreadRadius: -1.0,
//                      ),
//                    ],
//                  ),
//                  child: SingleChildScrollView(
//                    scrollDirection: Axis.horizontal,
//                    physics: const BouncingScrollPhysics(),
//                    child: Padding(
//                      padding: const EdgeInsets.all(8.0),
//                      child: Row(
//                        children: <Widget>[
//                          OnlinePersonAction(
//                            personImagePath: "assets/img/logomeetap.png",
//                            actColor: Colors.greenAccent,
//                          ),
//                          OnlinePersonAction(
//                            personImagePath: "assets/img/logomeetap.png",
//                            actColor: Colors.yellowAccent,
//                          ),
//                          OnlinePersonAction(
//                            personImagePath: "assets/img/logomeetap.png",
//                            actColor: Colors.redAccent,
//                          ),
//                          OnlinePersonAction(
//                            personImagePath: "assets/img/logomeetap.png",
//                            actColor: Colors.yellowAccent,
//                          ),
//                          OnlinePersonAction(
//                            personImagePath: "assets/img/logomeetap.png",
//                            actColor: Colors.greenAccent,
//                          ),
//                          OnlinePersonAction(
//                            personImagePath: "assets/img/logomeetap.png",
//                            actColor: Colors.greenAccent,
//                          ),
//                          OnlinePersonAction(
//                            personImagePath: "assets/img/logomeetap.png",
//                            actColor: Colors.greenAccent,
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//                ),
//              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: TextField(
                          // controller: TextEditingController(text: locations[0]),
                          cursorColor: Theme.of(context).primaryColor,
                          style: dropdownMenuItem,
                          decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                              prefixIcon: Material(
                                elevation: 0.0,
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                child: Icon(Icons.search),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//  Widget buildList(BuildContext context, int index) {
//    return Container(
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.circular(25),
//        color: Colors.white,
//      ),
//      width: double.infinity,
//      height: 110,
//      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//      child: Row(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Container(
//            width: 50,
//            height: 50,
//            margin: EdgeInsets.only(right: 15),
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(50),
//              border: Border.all(width: 3, color: secondary),
//              image: DecorationImage(
//                  image: CachedNetworkImageProvider(schoolLists[index]['logoText']),
//                  fit: BoxFit.fill),
//            ),
//          ),
//          Expanded(
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Text(
//                  schoolLists[index]['name'],
//                  style: TextStyle(
//                      color: primary,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 18),
//                ),
//                SizedBox(
//                  height: 6,
//                ),
//                Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.location_on,
//                      color: secondary,
//                      size: 20,
//                    ),
//                    SizedBox(
//                      width: 5,
//                    ),
//                    Text(schoolLists[index]['location'],
//                        style: TextStyle(
//                            color: primary, fontSize: 13, letterSpacing: .3)),
//                  ],
//                ),
//                SizedBox(
//                  height: 6,
//                ),
//                Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.school,
//                      color: secondary,
//                      size: 20,
//                    ),
//                    SizedBox(
//                      width: 5,
//                    ),
//                    Text(schoolLists[index]['type'],
//                        style: TextStyle(
//                            color: primary, fontSize: 13, letterSpacing: .3)),
//                  ],
//                ),
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
}

