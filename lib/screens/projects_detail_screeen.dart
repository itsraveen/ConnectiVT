import 'package:connectivt/data/data.dart';
import 'package:flutter/material.dart';

class ProjectsDetailScreen extends StatelessWidget {
  static const routeName = '/room-detail';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final projName = routeArgs['title'];
    final projImage = routeArgs['image'];
    final selectedProj = PROJECTS_CATEGORIES.firstWhere(
      (proj) => proj.name == projName && proj.image == projImage,
    );
    return Material(
      child: Text(projName.toString()),
    );
  }
}
