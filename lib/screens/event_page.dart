import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:join_events/screens/event_list.dart';
import 'package:join_events/screens/event_vert.dart';

final List<String> name = <String>[
  'Delhio',
  'Keralaio',
  'Mumbaio',
];
final List<String> place = <String>[
  'New Delhi, India',
  'Kerala, India',
  'Mumbai, India',
];
final List<String> img = <String>[
  'https://images.unsplash.com/photo-1449824913935-59a10b8d2000?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1444723121867-7a241cacace9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Y2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1514924013411-cbf25faa35bb?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
];

final List<String> quantity = <String>['1 Tbs', '200gm', '500gm'];

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange[400],
              boxShadow: [
                //background color of box
                BoxShadow(
                  color: Colors.orange.shade200,
                  blurRadius: 4.0, // soften the shadow
                  spreadRadius: 1.0, //extend the shadow
                  offset: const Offset(
                    0.0, // Move to right 10  horizontally
                    0.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 23),
                      child: Text(
                        'Current Location',
                        style: GoogleFonts.cabin(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            letterSpacing: 1,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Colors.white, size: 17),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              'New Delhi, India',
                              style: GoogleFonts.comfortaa(
                                  fontSize: 13, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0, right: 20),
                  child: Container(
                    height: 55.0,
                    width: 55.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        //background color of box
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 10.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: const Offset(
                            0.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        topRight: Radius.circular(100.0),
                        bottomRight: Radius.circular(100.0),
                        bottomLeft: Radius.circular(100.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: (Image.network(
                          'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // const Padding(
          //   padding: EdgeInsets.only(left: 30.0, right: 30),
          //   child: Card(
          //     elevation: 3,
          //     child: TextField(
          //       decoration: InputDecoration(
          //         icon: Padding(
          //           padding: EdgeInsets.only(left: 18.0),
          //           child: Icon(Icons.search, color: Colors.orange),
          //         ),
          //         labelText: "Search For A Location",
          //         labelStyle: TextStyle(
          //           color: Colors.grey,
          //           fontSize: 14,
          //         ),
          //         enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //           borderSide: BorderSide(
          //             color: Colors.white,
          //           ),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //           borderSide: BorderSide(color: Colors.white),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(height: 360, child: Events()),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text('EVENTS',
                      style: GoogleFonts.abhayaLibre(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 26.0),
                  child: Text('View More',
                      style: GoogleFonts.comfortaa(
                        color: Colors.black87,
                        fontSize: 12,
                      )),
                ),
              ]),
              Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.all(8),
                        itemCount: name.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, top: 20, bottom: 10),
                            child: Container(
                              height: 85,
                              width: 100,
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)),
                                boxShadow: [
                                  //background color of box
                                  BoxShadow(
                                    color: Color(0xfffe0e0e0),
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 1.0, //extend the shadow
                                    offset: Offset(
                                        0.0, 0.0 // Move to bottom 10 Vertically
                                        ),
                                  )
                                ],
                              ),
                              padding: const EdgeInsets.all(0),
                              child: Center(
                                child: ListTile(
                                  leading: Container(
                                      decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5.0),
                                            topRight: Radius.circular(5.0),
                                            bottomLeft: Radius.circular(5.0),
                                            bottomRight: Radius.circular(5.0)),
                                        boxShadow: [
                                          //background color of box
                                          BoxShadow(
                                            color: Color(0xfffe0e0e0),
                                            blurRadius:
                                                10.0, // soften the shadow
                                            spreadRadius:
                                                1.0, //extend the shadow
                                            offset: Offset(0.0,
                                                0.0 // Move to bottom 10 Vertically
                                                ),
                                          )
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        child: Image.network(
                                          '${img[index]}',
                                          width: 60,
                                          height: 60,
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  title: Text('${name[index]}',
                                      style: GoogleFonts.aleo(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal)),
                                  subtitle: Row(
                                    children: [
                                      Icon(Icons.location_on,
                                          size: 16, color: Colors.orangeAccent),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 2.0),
                                        child: Text('${place[index]}',
                                            style: GoogleFonts.comfortaa(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal)),
                                      ),
                                    ],
                                  ),
                                  trailing: Icon(Icons.forward),
                                ),
                              ),
                            ),
                          );
                        }),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
