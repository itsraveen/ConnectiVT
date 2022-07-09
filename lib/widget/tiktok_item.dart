import 'package:flutter/material.dart';

class HomeTokItem extends StatefulWidget {
  final String title;
  final String image;
  final int funding_recieved;
  final int funding_needed;
  final String organisation;
  int _likes;

  HomeTokItem(
    this.title,
    this.image,
    this.funding_recieved,
    this.funding_needed,
    this.organisation,
    this._likes,
  );

  @override
  State<HomeTokItem> createState() => _HomeTokItemState(_likes);
}

class _HomeTokItemState extends State<HomeTokItem> {
  var likes;
  var _firstPress = true;

  _HomeTokItemState(this.likes);

  void _incrementCounter() {
    setState(() {
      likes++;
    });
  }

  void _decrementCounter() {
    setState(() {
      likes--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.amber.shade200,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 00,
            right: 0,
            child: SizedBox(
              child: Container(
                width: 500,
                height: 120,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      // Colors.red,
                      Colors.black,
                      Colors.black26,
                      Colors.black12
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                widget.organisation,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          Positioned(
            bottom: 300,
            right: 10,
            child: Container(
              child: IconButton(
                onPressed: () => {},
                icon: Icon(Icons.share),
              ),
            ),
          ),
          Positioned(
            bottom: 250,
            right: 10,
            child: Container(
              child: IconButton(
                onPressed: () {
                  if (_firstPress) {
                    _incrementCounter();
                    _firstPress = false;
                  } else {
                    _decrementCounter();
                    _firstPress = true;
                  }
                },
                icon: _firstPress
                    ? Icon(Icons.thumb_up)
                    : const Icon(
                        Icons.thumb_up,
                        color: Colors.blue,
                      ),
              ),
            ),
          ),
          Positioned(
            bottom: 240,
            right: 22,
            child: Container(
              child: Text(
                likes.toString(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
