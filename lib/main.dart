import 'package:first_flutter_app/review_list.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/review.dart';
import 'description_place.dart';
import 'gradient_back.dart';
import 'header_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Share'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String description =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  List<Review> reviewList = List<Review>.generate(
    3,
    (index) => const Review(
        "https://media.istockphoto.com/id/637885546/photo/looking-stylish-in-paris.jpg?s=612x612&w=0&k=20&c=y4mB3qnnH6wjMEERDf8zR4pdKksFQbK6VFjbSGnLaXA=",
        "Varuna Yasas",
        "1 review 5 photos",
        "There is an amazing place in Sri Lanka"),
    growable: true,
  );

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: Text(widget.title),
          */ /*leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SecondPage();
              })),
              tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            );
          },
        ),
        ),*/
        body: Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bahamas", 4, description),
            ReviewList(reviewList),
          ],
        ),
        HeaderAppbar(),
      ],
    )

        /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
        );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(alignment: Alignment.center, children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/564x/0c/6a/71/0c6a71c7efda97e3036c935bebdee9a5.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: Container(
                  color: Colors.black26,
                  height: 100,
                  child: const Center(
                    child: Text(
                      "Naughty",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ))),
        ]));
  }
}
