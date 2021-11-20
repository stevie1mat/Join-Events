import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class MoreStories extends StatefulWidget {
  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<MoreStories> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: [
              StoryItem.pageImage(
                url:
                    "https://images.unsplash.com/photo-1455853828816-0c301a011711?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                caption: "Delicious",
                controller: storyController,
              ),
              StoryItem.pageImage(
                  url:
                      "https://images.unsplash.com/photo-1501959915551-4e8d30928317?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGNsZWFuJTIwY2l0eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                  controller: storyController),
            ],
            onStoryShow: (s) {
              print("Showing a story");
            },
            onComplete: () {
              print("Completed a cycle");
            },
            progressPosition: ProgressPosition.top,
            repeat: false,
            controller: storyController,
          ),
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 55.0, left: 23, bottom: 10, right: 7),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                      color: Colors.white,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Container(
                  child: Container(
                    height: 45.0,
                    width: 45.0,
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
        ],
      ),
    );
  }
}
