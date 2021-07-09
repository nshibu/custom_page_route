import 'package:custom_page_route/custom_page_route.dart';
import 'package:example/page1.dart';
import 'package:example/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated Page Route"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      axisDirection: AxisDirection.left,
                      child: Page1(),
                    ),
                  );
                },
                child: Text("Go to Page 1"),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      transitionDuration: Duration(seconds: 5),
                      reverseTransitionDuration: Duration(seconds: 5),
                      axisDirection: AxisDirection.up,
                      child: Page2(),
                    ),
                  );
                },
                child: Text("Go to Page 2"),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      transitionDuration: Duration(seconds: 5),
                      reverseTransitionDuration: Duration(seconds: 5),
                      axisDirection: AxisDirection.down,
                      child: Page2(),
                    ),
                  );
                },
                child: Text("Go to Page 3"),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      transitionDuration: Duration(seconds: 5),
                      reverseTransitionDuration: Duration(seconds: 5),
                      axisDirection: AxisDirection.right,
                      child: Page2(),
                    ),
                  );
                },
                child: Text("Go to Page 4"),
              ),
            ],
          ),
        ));
  }
}
