/**
 * 1. Set up a PageRouteBuilder
 * 2. Create a Tween
 * 3. Add an AnimatedWidget
 * 4. Use a CurveTween
 * 5. Combine the two TweenS
 * **/
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
          child: const Text('Go!'),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: ((context, animation, secondaryAnimation) => const Page2()),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      final tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      // final offsetAnimation = animation.drive(tween);
      final curvedAnimation = CurvedAnimation(parent: animation, curve: curve);

      return SlideTransition(
          position: tween.animate(curvedAnimation), child: child);
    },
  );
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Page2'),
        ));
  }
}
