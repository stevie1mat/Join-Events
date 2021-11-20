import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:join_events/data/events_list.dart';
import 'package:join_events/screens/stories/fullscreen.dart';
import 'package:join_events/screens/stories/stories.dart';
import 'dart:math' as math;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 42.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1461344577544-4e5dc9487184?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHBhaW50aW5nfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1000&q=60',
                  height: 315,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 48.0, left: 15),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent[400],
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.pinkAccent.shade200,
                                blurRadius: 4.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: const Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 13, bottom: 10, right: 7),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 18,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MoreStories()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 48.0, right: 15),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent[400],
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.orangeAccent.shade200,
                                blurRadius: 4.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: const Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 10.0, left: 20, bottom: 10, right: 11),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.whatshot_outlined,
                                  size: 21,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 1, left: 3.0, right: 10),
                                  child: Text('STORIES',
                                      style: GoogleFonts.abhayaLibre(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 260,
                left: MediaQuery.of(context).size.width / 2.6,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Container(
                          height: 95.0,
                          width: 95.0,
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
                              topLeft: Radius.circular(50.0),
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
                    ]),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('MARK BUFALLO',
              style: GoogleFonts.abhayaLibre(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 2,
          ),
          Text('New Delhi, India',
              style: GoogleFonts.comfortaa(
                  color: Colors.black54,
                  fontSize: 13,
                  fontWeight: FontWeight.normal)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('I\'m Mark Bufallo. Sitting on a Kettle Low!',
                style: GoogleFonts.comfortaa(
                    color: Colors.black54,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                    angle: -math.pi / 4.0,
                    child: Icon(
                      Icons.link_outlined,
                      size: 20,
                    )),
                SizedBox(
                  width: 4,
                ),
                Text('https://siyonfresh.com',
                    style: GoogleFonts.abhayaLibre(
                        color: Colors.blueAccent,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  //background color of box
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 8.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: const Offset(
                      0.0, // Move to right 10  horizontally
                      0.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
              ),
              width: 275,
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8),
                child: Stack(
                  children: [
                    Positioned(
                      left: 165,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              //background color of box
                              BoxShadow(
                                color: Colors.purple.shade200,
                                blurRadius: 4.0, // soften the shadow
                                spreadRadius: 1.0, //extend the shadow
                                offset: const Offset(
                                  0.0, // Move to right 10  horizontally
                                  0.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            color: Colors.purple[500],
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                              bottomRight: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0),
                            ),
                          ),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 11.0, left: 12, right: 12),
                              child: Text('Show All',
                                  style: GoogleFonts.abhayaLibre(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 65,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1581382575275-97901c2635b7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 33,
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  )),
                            ))),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                )))),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text('GALLERY',
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
          const SizedBox(
            height: 15,
          ),
          const SizedBox(height: 300, child: Stories()),
          const SizedBox(
            height: 40,
          ),
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
          SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                itemCount: name.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 20, bottom: 10),
                    child: Container(
                      height: 45,
                      width: 300,
                      decoration: const BoxDecoration(
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
                            offset:
                                Offset(0.0, 0.0 // Move to bottom 10 Vertically
                                    ),
                          )
                        ],
                      ),
                      padding: const EdgeInsets.all(0),
                      child: Center(
                        child: ListTile(
                          leading: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0)),
                                boxShadow: [
                                  //background color of box
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10.0, // soften the shadow
                                    spreadRadius: 1.0, //extend the shadow
                                    offset: Offset(
                                        0.0, 0.0 // Move to bottom 10 Vertically
                                        ),
                                  )
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Image.network(
                                  img[index],
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                              )),
                          title: Text(name[index],
                              style: GoogleFonts.aleo(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal)),
                          subtitle: Row(
                            children: [
                              const Icon(Icons.location_on,
                                  size: 16, color: Colors.orangeAccent),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(place[index],
                                    style: GoogleFonts.comfortaa(
                                        color: Colors.black54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal)),
                              ),
                            ],
                          ),
                          trailing: const Icon(Icons.forward),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    ));
  }
}
