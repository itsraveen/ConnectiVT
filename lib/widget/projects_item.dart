// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../screens/projects_detail_screeen.dart';

class ProjectItem extends StatelessWidget {
  final String title;
  final String image;

  const ProjectItem(this.title, this.image);

  void selectRoom(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ProjectsDetailScreen.routeName, arguments: {
      'title': title,
      'image': image,
    }).then((result) {
      if (result != null) {
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = double.infinity;
    var height = MediaQuery.of(context).size.height / 3 - 100;
    return InkWell(
      onTap: () => selectRoom(context),
      splashColor: Colors.amber.shade200,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              child: Image.network(
                image,
                height: height,
                width: 400,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                width: 200,
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                child: Text(
                  title,
                  // image,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
