import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../data/data.dart';

class Experience extends StatelessWidget {
  static const routeName = '/experience';
  String org1 = 'Elderly Digital Workshop';
  String year1 = '2020';
  String desc1 =
      'Oversaw the ideation and implementation of the project. Went down to supervise the progress.';
  String org2 = 'CodeCamp 2022';
  String year2 = '2022';
  String desc2 =
      'Taught underprivileged children how to code in python using Spark AI';
  String org3 = 'Wikiton';
  String year3 = '2023';
  String desc3 =
      'Won the competition with flying colours, making a ground-breaking social good application.';
  Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          org1,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          year1,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          desc1,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const Divider(),
                      ////////////////////////////////////////////////
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          org2,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          year2,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          desc2,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const Divider(),
                      ////////////////////////////////////////////////
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          org3,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          year3,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          desc3,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
