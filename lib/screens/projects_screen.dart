import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widget/projects_item.dart';

class ProjectsScreen extends StatelessWidget {
  static const routeName = '/';
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: PROJECTS_CATEGORIES
            .map(
              (proj) => ProjectItem(
                proj.name,
                proj.image,
              ),
            )
            .toList(),
      ),
    );
  }
}
