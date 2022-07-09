import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
                  onPressed: () {},
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
            ],
          ),
        ],
      ),
    );
  }
}
