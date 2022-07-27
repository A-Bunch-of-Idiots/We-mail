import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)), body: TemplateList());
  }
}

class TemplateList extends StatelessWidget {
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
            children: [SizedBox(height: 10, width: 15), Text('Bank',  style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),)],
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
      child:Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[ Row(
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
                            "Fund Transfer\nRequest",
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
                            "Bank Verification\nLetter\nRequest",
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
                            "Change Address\nBranch\nRequest",
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
                            "Renewal of\nATM card",
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
                            "New\nBanking\nApplication",
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
                            "New\nPassbook\nRequest",
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