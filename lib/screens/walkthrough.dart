import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:join_events/screens/events/event_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1566041510394-cf7c8fe21800?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAwfHxwYXR0ZXJufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        fit: BoxFit.cover)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 78.0, left: 31),
                        child: Row(
                          children: [
                            Image.network(
                              'https://img.hurawatch.it/xxrz/400x400/100/d2/93/d2938ea713e962b06e894d15f05261a1/d2938ea713e962b06e894d15f05261a1.png',
                              width: 50,
                            ),
                            Text(
                              'EVENTIO',
                              style: GoogleFonts.cinzel(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, left: 40),
                        child: Text(
                          'Find Interested Events To Join !',
                          style: GoogleFonts.comfortaa(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
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
                                topLeft: Radius.circular(100.0),
                                topRight: Radius.circular(100.0),
                                bottomRight: Radius.circular(100.0),
                                bottomLeft: Radius.circular(100.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: (Image.network(
                                  'https://images.unsplash.com/photo-1510832198440-a52376950479?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: 70.0,
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
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                bottomLeft: Radius.circular(0.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: (Image.network(
                                  'https://images.unsplash.com/photo-1484399172022-72a90b12e3c1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Center(
                          child: Container(
                        height: 100.0,
                        width: 145.0,
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
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: (Image.network(
                              'https://images.unsplash.com/photo-1537511446984-935f663eb1f4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fG1hbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                              height: 115,
                              width: 120,
                            )),
                          ),
                        ),
                      )),
                      const SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 90.0,
                            width: 90.0,
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
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                bottomLeft: Radius.circular(0.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: (Image.network(
                                  'https://images.unsplash.com/photo-1636958018629-db46309dc529?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: 75.0,
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
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: (Image.network(
                                  'https://images.unsplash.com/photo-1586083702768-190ae093d34d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60',
                                  fit: BoxFit.cover,
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 80),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DefaultBottomBarController(
                                            child: EventsPage())));
                          },
                          child: Container(
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
                                style: GoogleFonts.cinzel(
                                    fontSize: 17, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]))));
  }
}
