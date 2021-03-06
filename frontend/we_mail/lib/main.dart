import 'package:flutter/material.dart';
import 'package:we_mail/create_template.dart';
import './category.dart';
import './create_template.dart';
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
        brightness: Brightness.light,
        // primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily:'Raleway'),
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
  final List categories=["General","Academics","Work","Business"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Center(child:Text(widget.title)),

        ),
        body: ListView(children:[CategoryOverview(categories[0]),CategoryOverview(categories[1]),CategoryOverview(categories[2]),CategoryOverview(categories[3])]));
  }
}

class CategoryOverview extends StatelessWidget {
  CategoryOverview(this.title);
  final String title;
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
            children: [SizedBox(height: 10, width: 15), CategoryName(title)],
          ),
          // CategoryName(),
          TemplatesOverview(),
        ]);
  }
}

class CategoryName extends StatelessWidget {
  CategoryName(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {

    // return Text(title,style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),);

    return FlatButton(
                      onPressed: () => {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CategoryPage(title: 'We-Mail',subtitle:"Academics")))},
                      child: Column(
                        // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Text(title,style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
                        ],
                      ),
                    );

  }
}

class TemplatesOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double templateHeight =
        MediaQuery.of(context).size.height * 0.30 - 100;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Template 1",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
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
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Template 2",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: templateHeight,
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Template 3",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
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
                    color: Colors.blue.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => { Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const CreateTemplate(title: 'We-Mail')))},
                    color: Colors.blue.shade400,
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              Icon(
                                
                                Icons.add,size: 50,color: Colors.white,),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              // Container(
              //   width: 150,
              //   margin: EdgeInsets.only(right: 20),
              //   height: templateHeight,
              //   decoration: BoxDecoration(
              //       color: Colors.lightBlueAccent.shade400,
              //       borderRadius: BorderRadius.all(Radius.circular(20.0))),
              //   child: Padding(
              //     padding: const EdgeInsets.all(12.0),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: <Widget>[Icon(Icons.add),
              //         SizedBox(
              //           height: 10,
              //         ),
              //         Text(
              //           "20 Items",
              //           style: TextStyle(fontSize: 16, color: Colors.white),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );

// class TemplateBanner extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
  }
}



