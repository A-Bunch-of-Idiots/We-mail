import 'package:flutter/material.dart';
import 'create_template.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditTemplate extends StatefulWidget {
  const EditTemplate({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EditTemplate> createState() => _EditTemplateState();
}

class _EditTemplateState extends State<EditTemplate> {
  void showToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.check_circle,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => SizedBox(
                      child: AlertDialog(
                        content: Padding(
                          padding: const EdgeInsets.only(
                              left: 18, top: 8, bottom: 8),
                          child: const Text('Email Sent Sucessfully'),
                        ),
                        // actions: <Widget>[
                        //   FlatButton(
                        //     child: const Text('Cancel'),
                        //     onPressed: () {
                        //       Navigator.pop(context, 'Cancel');
                        //     },
                        //   ),
                        //   FlatButton(
                        //     child: const Text('Send'),
                        //     onPressed: () {
                        //       Navigator.pop(context, 'Send');
                        //       showToast();
                        //     },
                        //   )
                        // ],
                      ),
                    ),
                  ),
                  child: Icon(Icons.send),
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'To',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Cc',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Bcc',
                      ),
                    ),
                    TextFormField(
                      controller: TextEditingController()
                        ..text =
                            'Subject: Request for Deadline Extension of ______ (Assignment name and module code)',
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Subject',
                      ),
                    ),
                    SingleChildScrollView(
                      child: TextField(
                        controller: TextEditingController()
                          ..text =
                              '\nDear sir/madam,\n\nI email you to request a time extension till ____ (desired date for submission) for the completion of ________ (assignment), initially due on _____ (initial due date). Due to _________ (reason), I haven’t been able to finish the assignment yet, and I believe I will need some more time to review and complete it.\n\nI appreciate your time and consideration and goodness in responding to my appeal. Please inform me of your decision as soon as possible.\n\nThank you.\n\nBest regards,\n\n_________ (name, index number and email signature)\n\n\n',
                        maxLines: null,
                        textCapitalization: TextCapitalization.sentences,
                        decoration: null,
                        style: TextStyle(
                          fontSize: 19,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
