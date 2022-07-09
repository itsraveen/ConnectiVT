import 'package:connectivt/data/data.dart';
import 'package:flutter/material.dart';

class ProjectsDetailScreen extends StatelessWidget {
  static const routeName = '/room-detail';
  Widget buildIconTile(BuildContext context, Icon icon, String title,
      String subtitle, double mainFontSize) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold,
                          // color: Theme.of(context).accentColor,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: mainFontSize,
                          // color: Theme.of(context).textTheme.bodyText1.color,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPhotoGallery(List<String> gallery) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 180,
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: 8,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            width: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                gallery[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        itemCount: gallery.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final projName = routeArgs['title'];
    final projImage = routeArgs['image'];
    final selectedProject = PROJECTS_CATEGORIES.firstWhere(
      (proj) => proj.name == projName && proj.image == projImage,
    );

    final name = projName == null ? 'hi' : projName;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              selectedProject.name,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
              softWrap: true,
              overflow: TextOverflow.fade,
            ),
            background: Hero(
              tag: selectedProject.name,
              child: Image.network(
                selectedProject.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RaisedButton(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 40,
                          ),
                          color: Theme.of(context).primaryColor,
                          child: const Text(
                            'CHAT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          onPressed: () => {},
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 30,
                          ),
                          color: Theme.of(context).primaryColor,
                          child: const Text(
                            'DONATE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          onPressed: () => startAddNewDonation(context),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10.0),
                          alignment: Alignment.center,
                          child: IconButton(
                              iconSize: 50,
                              color: Colors.blue,
                              splashColor: Colors.yellow,
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              buildIconTile(
                context,
                const Icon(Icons.home_outlined),
                'Project Name',
                selectedProject.name,
                17,
              ),
              buildIconTile(
                context,
                const Icon(Icons.description_outlined),
                'Project Description',
                selectedProject.description,
                14,
              ),
              buildIconTile(
                context,
                const Icon(Icons.monetization_on_outlined),
                'Fundings',
                '\$${selectedProject.fundings_recieved}' +
                    ' / ' +
                    '\$${selectedProject.fundings_needed}',
                17,
              ),
              buildIconTile(
                context,
                const Icon(Icons.man_outlined),
                'Manpower Needed',
                selectedProject.manpower,
                17,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 18),
                child: const Text(
                  'More photos',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              selectedProject.gallery == null
                  ? Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      height: 180,
                      child: const Text(
                        'No photos available',
                        textAlign: TextAlign.center,
                      ),
                    )
                  : buildPhotoGallery(selectedProject.gallery),
              const SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
      ],
    ));
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
        );
      },
    );
  }
}
