import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:join_events/data/events_list.dart';
import 'package:video_player/video_player.dart';

class Stories extends StatefulWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(0),
        itemCount: storylist.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 10),
            child: Container(
                height: 400,
                width: 200,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                  boxShadow: [
                    //background color of box
                    BoxShadow(
                      color: Color(0xfffe0e0e0),
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1.0, //extend the shadow
                      offset: Offset(0.0, 0.0 // Move to bottom 10 Vertically
                          ),
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        storylist[index],
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
