import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:join_events/models/event_list_page.dart';
import 'package:http/http.dart' as http;
import 'large_event.dart';

class EventList extends StatelessWidget {
  const EventList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder<List<Event>>(
        future: fetchEvents(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return EventListHorizotal(event: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.pinkAccent,
              ),
            );
          }
        },
      ),
    );
  }
}

class EventListHorizotal extends StatelessWidget {
  const EventListHorizotal({Key? key, required this.event}) : super(key: key);

  final List<Event> event;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      itemCount: event.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LargeEvent(event: event[index])));
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                    width: 280.0,
                    height: 270,
                    decoration: BoxDecoration(
                      color: event[index].color == 'pinkAccent'
                          ? Colors.pinkAccent[400]
                          : Colors.orangeAccent[400],
                      boxShadow: [
                        //background color of box

                        BoxShadow(
                          color: event[index].color == 'pinkAccent'
                              ? Colors.pinkAccent.shade200
                              : Colors.orangeAccent.shade200,
                          blurRadius: 4.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: const Offset(
                            0.0, // Move to right 10  horizontally
                            0.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
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
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, top: 18),
                                  child: Text(
                                    event[index].date,
                                    style: GoogleFonts.comfortaa(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Text(
                                    event[index].month,
                                    style: GoogleFonts.comfortaa(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 8.0, left: 10),
                              child: Row(
                                children: [
                                  const Icon(Icons.location_on,
                                      color: Colors.white, size: 13),
                                  Text(
                                    event[index].name,
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
                            left: 90,
                            child: Image.network(
                              event[index].url,
                              width: 200,
                            ))
                      ],
                    )),
                Container(
                  width: 279,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                    ),
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
        );
      },
    );
  }
}
