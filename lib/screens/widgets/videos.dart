import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:join_events/data/events_list.dart';
import 'package:video_player/video_player.dart';

class VideosList extends StatefulWidget {
  const VideosList({Key? key}) : super(key: key);

  @override
  State<VideosList> createState() => _VideosListState();
}

class _VideosListState extends State<VideosList> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://player.vimeo.com/external/210753048.sd.mp4?s=23a06b888d4d6338bfd6413af300509389b0a7a9&profile_id=164&oauth2_token_id=57447761',
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.play();

    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(0),
        itemCount: videolist.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: Colors.transparent,
                  content: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: VideoPlayer(_controller)),
                  actions: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Container(
                          height: 45.0,
                          width: 135.0,
                          decoration: BoxDecoration(
                            color: Colors.black,
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
                              'CLOSE',
                              style: GoogleFonts.cinzel(
                                  fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Container(
                  height: 100,
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
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
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.network(videolist[index]),
                        Container(
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0)),
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
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(Icons.play_arrow),
                            )),
                      ],
                    ),
                  )),
            ),
          );
        });
  }
}
