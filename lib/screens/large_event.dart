import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong2/latlong.dart';

class LargeEvent extends StatefulWidget {
  const LargeEvent({Key? key}) : super(key: key);

  @override
  _LargeEventState createState() => _LargeEventState();
}

class _LargeEventState extends State<LargeEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 320,
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
                        bottomRight: Radius.circular(0.0),
                        bottomLeft: Radius.circular(0.0),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 18.0, top: 48),
                                      child: Icon(
                                        Icons.arrow_back_ios_sharp,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 8.0, left: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Best Event That Is\nEver Happening !',
                                    style: GoogleFonts.cinzel(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 14.0, left: 10),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on,
                                      color: Colors.white, size: 13),
                                  Text(
                                    'New Delhi, India',
                                    style: GoogleFonts.comfortaa(
                                        fontSize: 12, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                            left: 200,
                            child: Image.asset(
                              'images/woman1.png',
                              width: 220,
                            ))
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      //background color of box
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 6.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: const Offset(
                          0.0, // Move to right 10  horizontally
                          0.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15.0, bottom: 15, left: 14),
                        child: Text(
                          '89 JOINED',
                          style: GoogleFonts.cinzel(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black87),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        width: 75,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 45,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG1hbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Positioned(
                              left: 35,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Positioned(
                              left: 25,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1581382575275-97901c2635b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Positioned(
                              left: 13,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.cover,
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 6, right: 8, left: 8, bottom: 2.0),
            child: Container(
              child: Text(
                'Hi Steven! Do You want to join us? We need to clean the city and suburbs! Let\'s Join Delhio.',
                style:
                    GoogleFonts.comfortaa(fontSize: 15, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
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
              height: 230,
              width: MediaQuery.of(context).size.width,
              child: FlutterMap(
                options: MapOptions(
                  center: LatLng(51.5, -0.09),
                  zoom: 13.0,
                ),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c'],
                    attributionBuilder: (_) {
                      return Text("© OpenStreetMap contributors");
                    },
                  ),
                  MarkerLayerOptions(
                    markers: [],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 45.0,
            width: 165.0,
            decoration: BoxDecoration(
              color: Colors.black87,
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
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 11.0),
              child: Text(
                'GET STARTED',
                style: GoogleFonts.cinzel(fontSize: 17, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
