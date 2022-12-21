import 'package:flutter/material.dart';
import './models/location.dart';

class LocationDetail extends StatelessWidget {
  // const LocationDetail({super.key});

  final Location location;
  const LocationDetail(this.location, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(location.name),
          backgroundColor: Colors.lightGreen[300],
          centerTitle: true,
          foregroundColor: Colors.amber[900],
          iconTheme:
              const IconThemeData(color: Colors.red, opacity: 0.5, size: 2)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textDirection: TextDirection.rtl,
        children: _renderBody(context, location),
      ),
    );
  }

  // Widget _section(String title, Color color) {
  //   return Container(
  //       decoration: BoxDecoration(color: color),
  //       child: Text(title),
  //       height: 200);
  // }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = <Widget>[];
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = <Widget>[];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 25.0,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
      child: Text(text),
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightForFinite(height: height),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
