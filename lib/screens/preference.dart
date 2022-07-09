import 'package:flutter/material.dart';

class Preference extends StatefulWidget {
  static const routeName = '/preference';
  const Preference({Key? key}) : super(key: key);

  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  Widget preferenceButton(
    var _first,
    Color firstColor,
    Color secondColor,
    Icon icon,
    String title,
  ) {
    return ElevatedButton(
      onPressed: () => setState(() => _first = !_first),
      style: ButtonStyle(
        backgroundColor: _first
            ? MaterialStateProperty.all(firstColor)
            : MaterialStateProperty.all(secondColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
            )
          ],
        ),
      ),
    );
  }

  var _first = true;
  var _second = true;
  var _third = true;
  var _forth = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 30.0),
            child: const Text(
              'Select causes you care about so we can customise your preferred content here.',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 30.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => _first = !_first),
                  style: ButtonStyle(
                    backgroundColor: _first
                        ? MaterialStateProperty.all(Colors.red.shade100)
                        : MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.child_care),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Children',
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                ElevatedButton(
                  onPressed: () => setState(() => _second = !_second),
                  style: ButtonStyle(
                    backgroundColor: _second
                        ? MaterialStateProperty.all(Colors.green.shade100)
                        : MaterialStateProperty.all(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.child_care),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Environment',
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 30.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => _third = !_third),
                  style: ButtonStyle(
                    backgroundColor: _third
                        ? MaterialStateProperty.all(Colors.brown.shade100)
                        : MaterialStateProperty.all(Colors.brown),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.child_care),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Animals',
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15.0),
                ElevatedButton(
                  onPressed: () => setState(() => _forth = !_forth),
                  style: ButtonStyle(
                    backgroundColor: _forth
                        ? MaterialStateProperty.all(Colors.pink.shade100)
                        : MaterialStateProperty.all(Colors.pink),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      children: const [
                        Icon(Icons.child_care),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Elderly',
                        )
                      ],
                    ),
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
