import 'package:flutter/material.dart';

class HomeTokItem extends StatelessWidget {
  final String title;
  final String image;
  final int funding_recieved;
  final int funding_needed;
  final String organisation;

  HomeTokItem(
    this.title,
    this.image,
    this.funding_recieved,
    this.funding_needed,
    this.organisation,
  );

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
                image: AssetImage(image),
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
                height: 180,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      // Colors.red,
                      Colors.black,
                      Colors.black54,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 120,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                title,
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
            bottom: 100,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                organisation,
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
          const Positioned(
            bottom: 73,
            right: 220,
            child: Icon(
              Icons.monetization_on_outlined,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 25,
            right: 28,
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue.shade200,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () => startAddNewDonation(
                  context), //=> showAllAchievements(context),
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 90,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      50,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(
                              top: 3.0,
                            ),
                            child: const Text(
                              'Donate',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final _amountController = TextEditingController();

  startAddNewDonation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Donate Now'),
          content: TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
          ),
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.blue.shade200,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    // side: const BorderSide(
                    //   color: Colors.red,
                    // ),
                  ),
                ),
              ),
              child: const Text("Submit"),
              onPressed: () {
                if (_amountController.text.isEmpty ||
                    double.parse(_amountController.text) <= 0) {
                } else {
                  Navigator.of(context).pop();
                  _amountController.clear();
                  const snackBar = SnackBar(
                    content: Text(
                      'You have just made having a home possible for some kids!',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
            )
          ],
          // onTap: () {},
          // child: const Donation(),
          // behavior: HitTestBehavior.opaque,
        );
      },
    );
  }
}
