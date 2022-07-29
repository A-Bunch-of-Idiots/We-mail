import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'edit_template.dart';

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
            onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EditTemplate(title: 'We-Mail')))
            },
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
                    "Dear sir/madam,\n\nI email you to request a time extension till ____ (desired date for submission) for the completion of ________ (assignment), initially due on _____ (initial due date). Due to _________ (reason), I haven’t been able to finish the assignment yet, and I believe I’ll need some more time to review and complete it.\n\nI appreciate your time and consideration and goodness in responding to my appeal. Please inform me of your decision as soon as possible.\n\nThank you.\n\nBest regards,_________ (name, index number and email signature)",
                    style: TextStyle(fontSize: 18.0, color: Colors.black))),
          ),
        ));
  }
}
