import 'package:flutter/material.dart';

class CreateTemplate extends StatefulWidget {
  const CreateTemplate({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CreateTemplate> createState() => _CreateTemplateState();
}

class _CreateTemplateState extends State<CreateTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => SizedBox(
                      child: AlertDialog(
                        content: Padding(
                          padding: const EdgeInsets.only(
                              left: 45, top: 8, bottom: 8),
                          child: const Text('Template Saved '),
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
                  child: Icon(
                    Icons.check_circle,
                    size: 26.0,
                  ),
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
                        labelText: 'Title',
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Subject',
                      ),
                    ),
                    TextField(
                      maxLines: null,
                      textCapitalization: TextCapitalization.sentences,
                      decoration: const InputDecoration(
                          labelText: 'Body', border: InputBorder.none),
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
