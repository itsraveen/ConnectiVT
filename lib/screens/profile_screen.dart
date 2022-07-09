import 'package:connectivt/widget/post.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';
import 'experience.dart';
import 'preference.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var _firstPress = true;
  void openPreference(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      Preference.routeName,
      arguments: {},
    );
  }

  void openExperience(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      Experience.routeName,
      arguments: {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 150,
            child: Stack(
              children: [
                Container(
                  height: 100,
                  color: Colors.pink,
                  foregroundDecoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.template.net/56075/Motivational-Linkedin-Banner-Template-sm-1611744369353-560750.jpeg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 50,
                  child: Container(
                    height: 100,
                    width: 100,
                    foregroundDecoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://nuscomputing.com/assets/RaveenPrabhu.jpg'),
                        fit: BoxFit.fitWidth,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Raveen Prabhu',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'President of NUS Students Computing Club',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'National University of Singapore',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: RaisedButton(
                  onPressed: () => openPreference(context),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 30,
                  ),
                  color: Colors.blue.shade200,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ), //Theme.of(context).primaryColor,
                  child: const Text(
                    'Open To',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: RaisedButton(
                  onPressed: () => openExperience(context),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 30,
                  ),
                  color: Colors.blue.shade200,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ), //Theme.of(context).primaryColor,
                  child: const Text(
                    'Experiences',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        padding: EdgeInsets.all(10.0),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Roy Chua",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(" likes this post"),
                              ],
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 14.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        NetworkImage(posts[0].useravatar),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        posts[0].username,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        posts[0].userCaption,
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      posts[0].timeAgo + " . " + " Edited",
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 10.0,
                            ),
                            Text(posts[0].posttext),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: FadeInImage(
                                image: NetworkImage(posts[0].postimage),
                                placeholder: NetworkImage(posts[0].postimage),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 17,
                                    width: 17,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Icon(
                                      Icons.thumb_up,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    posts[0].totalLikes,
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, bottom: 10),
                              child: Text(
                                posts[0].totalComments + " comments",
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1.0,
                        color: Colors.grey[300],
                      ),
                      Container(
                        height: 50.0,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.thumb_up_outlined,
                                    size: 20,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text("Like"),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.message_outlined),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text("Comment"),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.share_outlined),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text("Share"),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.send_outlined),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text("Send"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
