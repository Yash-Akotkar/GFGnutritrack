import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nutri_track/models/NutriTrackUser.dart';


class HomePage extends StatefulWidget {
  // final NutriTrackUser user;
  // const HomePage({Key? key, required this.user}) : super(key: key);
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class CardItem {
  final String category;
  final String percentage;
  final Color color;

  const CardItem({
    required this.category,
    required this.percentage,
    required this.color,
  });
}

class _HomePageState extends State<HomePage> {
  List<CardItem> items = [
    CardItem(
      category: "Calories",
      percentage: "49%",
      color: Color(0xFFFFF2F0),
    ),
    CardItem(
      category: "Proteins",
      percentage: "25%",
      color: Color(0xFFEFF7EE),
    ),
    CardItem(
      category: "Calories",
      percentage: "49%",
      color: Color(0xFFFFF8EB),
    ),
    CardItem(
      category: "Calories",
      percentage: "49%",
      color: Color(0xFFFFF2F0),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Widget buildCard({
      required CardItem item,
    }) =>
        Container(
          width: 200,
          // height: 200,
          // color: Colors.red,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            color: item.color,
            // margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 10, 15),
                  child: Text(
                    item.percentage,
                    style: TextStyle(fontSize: 45),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Text(
                    item.category,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(40, 50, 20, 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Hello, Yash",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xFF91C788),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 20, 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Find, track and eat heathy food.",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xFF7B7B7B),
                    // fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              color: Color(0xFFFFF8EB),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(65, 150, 65, 150),
                child: Text(
                  'This is the visualization',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    // color: Colors.white,
                    // fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Know more",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    // color: Color(0xFF7B7B7B),
                    // fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Container(
                height: 200,
                child: ListView.separated(
                  addAutomaticKeepAlives: false,
                  padding: EdgeInsets.all(16.0),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  separatorBuilder: (context, _) => SizedBox(width: 12),
                  itemBuilder: (context, index) => buildCard(item: items[index]),
                )),
          ],
        ),
      ),
    );
  }
}


    // return Scaffold(
    //   backgroundColor: Color(0xFF21BFBD),
    //   // body: Container(child: Text(widget.user.name),),
    //   body: ListView(
    //     children: <Widget>[
    //       Padding(
    //         padding: EdgeInsets.only(top: 15.0, left: 10.0),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: <Widget>[
    //             IconButton(
    //               icon: Icon(Icons.arrow_back_ios),
    //               color: Colors.white,
    //               onPressed: (){},
    //             ),
    //             Container(
    //               width: 125.0,
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: <Widget>[
    //                   IconButton(
    //                     icon: Icon(Icons.menu),
    //                     color: Colors.white,
    //                     onPressed: (){},
    //                   )
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //       SizedBox(height: 25.0),
    //       Padding(
    //         padding: EdgeInsets.only(left: 40.0),
    //         child: Row(
    //           children: <Widget>[
    //             Text('Healthy',
    //             style: TextStyle(
    //               fontFamily: 'Montserrat',
    //               color: Colors.white,
    //               fontWeight: FontWeight.bold,
    //               fontSize: 25.0)
    //             ),
    //             SizedBox(width: 10.0),
    //             Text('Food',
    //               style: TextStyle(
    //                 fontFamily: 'Montserrat',
    //                 color: Colors.white,
    //                 fontSize: 25.0 ),
    //             )
    //         ],
    //         ),
    //         ),
    //         SizedBox(height: 40.0),
    //         Container(
    //           height: MediaQuery.of(context).size.height - 185.0,
    //           decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
    //           ),
    //           child: ListView(
    //             primary: false,
    //             padding: EdgeInsets.only(left: 25.0, right: 20.0),
    //             children: <Widget>[
    //               Padding(
    //                 padding: EdgeInsets.only(top: 45.0),
    //                 child: Container(
    //                   height: MediaQuery.of(context).size.height - 300.0,
    //                   child: ListView(
    //                     children: [

    //                     ],
    //                   ),
    //                 ),
    //                 )
    //             ],
    //           )
    //         )
    //     ],
    //   ),
    // );