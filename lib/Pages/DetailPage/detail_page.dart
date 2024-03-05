import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Size size = MediaQuery.sizeOf(context);
    double h = size.height;
    double w = size.width;

    return Scaffold(
      body: Hero(
        // flightShuttleBuilder: (context, _, __, context2, context3) =>
        //     const Center(
        //   child: CircularProgressIndicator(),
        // ),
        tag: data['name'],
        child: Image.network(
          data['photo_url'],
          height: size.height * 0.6,
        ),
      ),
    );
  }
}
