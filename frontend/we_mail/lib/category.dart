import 'package:flutter/material.dart';
import 'view_template3.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  final String title;
  final subtitle;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: TemplateList(widget.subtitle));
  }
}

class TemplateList extends StatelessWidget {
  TemplateList(this.subtitle);
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 30.0,
          ),
          const SizedBox(
            width: 30.0,
          ),
          Row(
            children: [
              SizedBox(height: 10, width: 15),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              )
            ],
          ),
          // CategoryName(),
          Templates(),
        ]);
  }
}

class Templates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double templateHeight =
        MediaQuery.of(context).size.height * 0.30 - 100;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 20),
                  height: templateHeight,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {},
                          color: Colors.orange,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                "Academic\nPosition\nApplication",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 20),
                  height: templateHeight,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const ViewTemplate(title: 'We-Mail')))
                          },
                          color: Colors.orange,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                "Deadline\nExtension\nRequest",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 20),
                  height: templateHeight,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {},
                          color: Colors.orange,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                "Excuse\nfor\nAbsence",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 20),
                  height: templateHeight,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {},
                          color: Colors.orange,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                "Recorrection\nRequest",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 20),
                  height: templateHeight,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {},
                          color: Colors.orange,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                "Result\nSheet\nRequest",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 20),
                  height: templateHeight,
                  decoration: BoxDecoration(
                      color: Colors.orange.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {},
                          color: Colors.orange,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Text(
                                "Lecture\nCancellation\nMail",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
// class NewScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('New Screen')),
//       body: Center(
//         child: Text(
//           'This is a new screen',
//           style: TextStyle(fontSize: 24.0),
//         ),
//       ),
//     );
//   }
// }