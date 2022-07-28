import 'package:flutter/material.dart';
import 'create_template.dart';

class EditTemplate extends StatefulWidget {
  const EditTemplate({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EditTemplate> createState() => _EditTemplateState();
}

class _EditTemplateState extends State<EditTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const CreateTemplate(title: 'We-Mail')));
                  },
                  child: Icon(
                    Icons.check_circle,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
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
                            'Academic Administrative Position ___(Intake year) (___(posts, e.g.: -  Student Counsellor, Academic Sub Warden))',
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Subject',
                      ),
                    ),
                    TextField(
                      controller: TextEditingController()
                        ..text =
                            '\n\nDear Sir/Madam,\n\nPlease be kind enough to circulate the letter of the advertisement and the format attached herewith among your permanent academic staff enabling them to apply for the ___ (posts, e.g.: - Student Counsellor, Academic Sub Warden) posts before the closing date.\n\nThank you.\n\nBest regards,\n\n_________ (name, email signature)\n\n',
                      maxLines: null,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: null,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
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
