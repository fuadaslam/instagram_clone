import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fuad_test/insta_stories.dart';
import 'package:readmore/readmore.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;
  var post_list = [
    {
      "name": "fuad",
      "pro_picture": "https://avatars.githubusercontent.com/u/35493588?s=400&u=eeb5f33098611577e24dae6d83fd650b2676d293&v=4",
      "post_img": "https://cdn.pixabay.com/photo/2021/07/23/09/56/bulldog-6487009__340.jpg",
    },
    {
      "name": "john",
      "pro_picture": "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
      "post_img": "https://cdn.pixabay.com/photo/2021/07/20/20/54/donkey-6481736__340.jpg",
    },
    {
      "name": "Gokul",
      "pro_picture": "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "post_img": "https://cdn.pixabay.com/photo/2020/06/24/14/24/collared-dove-5336405__340.jpg",
    },
    {
      "name": "jibin",
      "pro_picture": "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
      "post_img": "https://cdn.pixabay.com/photo/2021/07/17/14/49/rabbit-6473257__340.jpg",
    },
  ];




  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery
        .of(context)
        .size;
    return ListView.builder(
      itemCount: post_list.length,
      itemBuilder: (context, index) =>
      index == 0
          ? new SizedBox(
        child: new InstaStories(),
        height: deviceSize.height * 0.15,
      )
          : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                              post_list[index]["pro_picture"],)),
                      ),
                    ),
                    new SizedBox(
                      width: 10.0,
                    ),
                    new Text(
                      post_list[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                new IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                )
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: new Image.network(
              post_list[index]["post_img"],
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new IconButton(
                      icon: new Icon(isPressed
                          ? Icons.favorite
                          : FontAwesomeIcons.heart),
                      color: isPressed ? Colors.red : Colors.black,
                      onPressed: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      FontAwesomeIcons.comment,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                new Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Liked by pawankumar, pk and 528,331 others",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
            new Container(
            height: 40.0,
              width: 40.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://avatars.githubusercontent.com/u/35493588?s=400&u=eeb5f33098611577e24dae6d83fd650b2676d293&v=4")),
              ),
            ),
            new SizedBox(
              width: 10.0,
            ),

          Expanded(
            child: new TextFormField(
              decoration: new InputDecoration(
                border: InputBorder.none,
                hintText: "Add a comment...",
              ),
            ),
          ),
        ],
      ),
    ),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child:
    Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
    )
    ],
    ),
    );
  }
}


class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Read More Text',
            style: TextStyle(color: Colors.white),
          )),
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
          //fontFamily: 'monospace',
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimLines: 2,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Flutter has its own UI components, along with an engine to render them on both the Android and iOS platforms. Most of those UI components, right out of the box, conform to the guidelines of Material Design.',
                  trimLines: 3,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Expand',
                  trimExpandedText: ' Collapse ',
                ),
              ),
              Divider(
                color: const Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                  trimLines: 2,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '...Read more',
                  trimExpandedText: ' Less',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}