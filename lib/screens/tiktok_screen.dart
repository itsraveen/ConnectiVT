import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widget/tiktok_item.dart';

class HomeTok extends StatelessWidget {
  static const routeName = '/home-tok';
  HomeTok({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: PROJECTS_CATEGORIES
            .map(
              (proj) => HomeTokItem(
                proj.name,
                proj.image,
                proj.fundings_recieved,
                proj.fundings_needed,
                proj.organisation,
              ),
            )
            .toList(),
      ),
    );
  }
}
