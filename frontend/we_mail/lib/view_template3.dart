import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ViewTemplate extends StatefulWidget {
  const ViewTemplate({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ViewTemplate> createState() => _ViewTemplateState();
}

class _ViewTemplateState extends State<ViewTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('Edit'),
            icon: const Icon(Icons.edit),
            highlightElevation: 50,
            backgroundColor: Colors.blue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
                child: Text(
                    "To: name@email.com \n\nFrom: name@email.com \n\nSubject: Academic Administrative Position ___(Intake year) (___(posts, e.g.: -  Student Counsellor, Academic Sub Warden))\n\nDear Sir/Madam,\n\nPlease be kind enough to circulate the letter of the advertisement and the format attached herewith among your permanent academic staff enabling them to apply for the ___ (posts, e.g.: - Student Counsellor, Academic Sub Warden) posts before the closing date.\n\nThank you.\n\nBest regards,\n\n_________ (name, email signature)\n\n",
                    style: TextStyle(fontSize: 18.0))),
          ),
        ));
  }
}
