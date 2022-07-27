import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'We-Mail',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const MyHomePage(title: 'We-Mail'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        floatingActionButton: Align(
          alignment: Alignment(1, -0.7),
          child: FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('Edit'),
            icon: const Icon(Icons.edit),
            highlightElevation: 50,
            backgroundColor: Colors.blue,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Text(
                          "\n\nTo: name@email.com \n\nFrom: name@email.com \n\nSubject: Academic Administrative Position ___(Intake year) (___(posts, e.g.: -  Student Counsellor, Academic Sub Warden))\n\nDear Sir/Madam,\n\nPlease be kind enough to circulate the letter of the advertisement and the format attached herewith among your permanent academic staff enabling them to apply for the ___ (posts, e.g.: - Student Counsellor, Academic Sub Warden) posts before the closing date.\n\nThank you.\n\nBest regards,\n\n_________ (name, email signature)\n\n",
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.black)),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
