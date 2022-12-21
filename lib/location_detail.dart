import 'package:flutter/material.dart';
import './models/location.dart';

class LocationDetail extends StatelessWidget {
  // const LocationDetail({super.key});

  final Location location;
  LocationDetail(this.location);

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
        children: _renderFacts(location),
      ),
    );
  }

  Widget _section(String title, Color color) {
    return Container(
        decoration: BoxDecoration(color: color),
        child: Text(title),
        height: 200);
  }

  List<Widget> _renderFacts(Location location) {
    var result = <Widget>[];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String title) {
    return Text(title);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }
}
