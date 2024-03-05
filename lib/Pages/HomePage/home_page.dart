import 'package:character_animation/utils/myrouts_utils.dart';
import 'package:flutter/material.dart';

import '../../utils/character_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: AllVegetables.map(
                (e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(MyRoutes.DetailPage, arguments: e);
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: h * 0.4,
                        width: w * 0.5,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.primaries[7].withOpacity(0.4),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(2, 2))
                          ],
                        ),
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          e['name'],
                          style: const TextStyle(
                            fontSize: 28,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(0, -0.5),
                        child: Hero(
                          flightShuttleBuilder: (
                            context,
                            _,
                            __,
                            context2,
                            context3,
                          ) =>
                              Center(
                            child: Image.network(
                              e['photo_url'],
                            ),
                          ),
                          tag: e['name'],
                          child: Image.network(
                            e['photo_url'],
                            height: h * 0.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
