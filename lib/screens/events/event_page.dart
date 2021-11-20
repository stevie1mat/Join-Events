import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:join_events/screens/events/event_lists.dart';
import 'package:join_events/data/events_list.dart';
import 'package:join_events/screens/profile/profile.dart';
import 'package:join_events/screens/widgets/map.dart';
import 'package:join_events/screens/widgets/videos.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        //
        // Set onVerticalDrag event to drag handlers of controller for swipe effect

        onVerticalDragEnd: DefaultBottomBarController.of(context).onDragEnd,
        child: FloatingActionButton.extended(
          label: AnimatedBuilder(
            animation: DefaultBottomBarController.of(context).state,
            builder: (context, child) => Row(
              children: [
                Text(
                  DefaultBottomBarController.of(context).isOpen
                      ? "Close"
                      : "Events",
                ),
                const SizedBox(width: 4.0),
                AnimatedBuilder(
                  animation: DefaultBottomBarController.of(context).state,
                  builder: (context, child) => Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.diagonal3Values(
                      1,
                      DefaultBottomBarController.of(context).state.value * 2 -
                          1,
                      1,
                    ),
                    child: child,
                  ),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.chevron_right,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          elevation: 3,
          backgroundColor: Colors.brown,
          foregroundColor: Color(0xffF0EEE2),
          //
          //Set onPressed event to swap state of bottom bar
          onPressed: () => DefaultBottomBarController.of(context).swap(),
        ),
      ),
      //
      // Actual expandable bottom bar
      bottomNavigationBar: BottomExpandableAppBar(
        horizontalMargin: 0,
        shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
        expandedBackColor: Colors.grey.shade100,
        expandedBody: TikTokStyleFullPageScroller(
          contentSize: eventimg.length,
          swipePositionThreshold: 0.2,
          // ^ the fraction of the screen needed to scroll
          swipeVelocityThreshold: 2000,
          // ^ the velocity threshold for smaller scrolls
          animationDuration: const Duration(milliseconds: 300),
          // ^ how long the animation will take
          // onScrollEvent: _handleCallbackEvent,
          // ^ registering our own function to listen to page changes
          builder: (BuildContext context, int index) {
            return Container(
              color: Colors.transparent,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                          topLeft: Radius.circular(5.0),
                          topRight: Radius.circular(5.0),
                          bottomRight: Radius.circular(5.0),
                          bottomLeft: Radius.circular(5.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 28.0, bottom: 28),
                        child: Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 1.3,
                                child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                    ),
                                    child: Image.network(eventimg[index]))),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                child: Text(
                              title[index],
                              style: GoogleFonts.cinzel(
                                  fontSize: 18,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            )),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 35.0,
                                  width: 135.0,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    boxShadow: [
                                      //background color of box
                                      BoxShadow(
                                        color: Colors.pinkAccent.shade200,
                                        blurRadius: 5.0, // soften the shadow
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
                                    padding: const EdgeInsets.only(top: 7.0),
                                    child: Text(
                                      'MAYBE LATER',
                                      style: GoogleFonts.cinzel(
                                          fontSize: 16, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 35.0,
                                  width: 135.0,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    boxShadow: [
                                      //background color of box
                                      BoxShadow(
                                        color: Colors.orangeAccent.shade200,
                                        blurRadius: 5.0, // soften the shadow
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
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Text(
                                      'JOIN NOW',
                                      style: GoogleFonts.cinzel(
                                          fontSize: 16, color: Colors.white),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '- Swipe Up To See More Events -',
                              style: GoogleFonts.lato(
                                  fontSize: 14, color: Colors.black26),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            );
          },
        ),
        bottomAppBarBody: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              Expanded(
                  child: Icon(
                Icons.home,
                color: Colors.brown,
              )),
              Spacer(
                flex: 2,
              ),
              Expanded(
                  child: Icon(
                Icons.whatshot,
                color: Colors.brown,
              )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Maps()));
            },
            child: Container(
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
                            const Icon(Icons.location_on,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Padding(
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
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10.0, top: 85),
            child: SizedBox(height: 390, child: EventList()),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 488.0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Row(
                          children: [
                            Icon(Icons.event_available_outlined, size: 21),
                            SizedBox(
                              width: 4,
                            ),
                            Text('EVENTS',
                                style: GoogleFonts.abhayaLibre(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
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
                    child: SizedBox(
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
                                      offset: Offset(0.0,
                                          0.0 // Move to bottom 10 Vertically
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
                                              bottomRight:
                                                  Radius.circular(5.0)),
                                          boxShadow: [
                                            //background color of box
                                            BoxShadow(
                                              color: Colors.black12,
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
                                            size: 16,
                                            color: Colors.orangeAccent),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2.0),
                                          child: Text(place[index],
                                              style: GoogleFonts.comfortaa(
                                                  color: Colors.black54,
                                                  fontSize: 14,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ),
                                      ],
                                    ),
                                    trailing: const Icon(Icons.forward),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Row(
                          children: [
                            Icon(Icons.view_day_outlined),
                            SizedBox(
                              width: 4,
                            ),
                            Text('VIDEOS',
                                style: GoogleFonts.abhayaLibre(
                                    color: Colors.black87,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
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
                  height: 25,
                ),
                const SizedBox(height: 150, child: VideosList()),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
