import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
 @override
 Widget build(BuildContext context) {
  return MaterialApp(
    title:"Stock News App",
    home:Home()
  );
 }
}

class Home extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Stock News App"),
          backgroundColor: Colors.deepPurple,
          ),
      body:Builder(
        builder:(context)=> SingleChildScrollView(
          child:Padding(
        padding:EdgeInsets.all(20),
        child:       Center(
        child:Column(children: [
          Padding(
            padding:EdgeInsets.all(10),
            child:Text(
            'Stock News',
            style:TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color:Colors.blue[800]
            ),
          ) ,
            ),
             Padding(
            padding:EdgeInsets.all(10),
            child:Text(
              'Real Time Analysis',
              style: TextStyle(
                fontSize:20,
                color:Colors.deepPurpleAccent
              ),
            ) ,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child:Image.network(
              "https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg",
              height: 350,
              ) ,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child:RaisedButton(
                child: Text("Contact us"),
                onPressed: () => contactUs(context)
               )
            ),

        ],)
       
      )

        ,)
      
        )
        
        )
      
      
    ) ;
  }
}
void contactUs(BuildContext context){
  print("CLICKING OH");
  showDialog(
    context:context,
    builder: (BuildContext context){
      return AlertDialog(
        title:Text("Contact Us"),
        content:Text("Mail us at goodness@rimotli.com"),
        actions:<Widget>[
          FlatButton(onPressed:() => Navigator.of(context).pop(), child: Text("Close"))
        ]
      );
    }
  );
  // showDialog(
  //   context:context,
  //   builder:(BuildContext context){
  //     return AlertDialog(
  //       title:Text("Contact Us"),
  //       content: Text("mail us at goodness@rimotli.com"),
  //       actions:<Widget>[
  //         FlatButton(
  //           child: Text('Close'),
  //           onPressed:() => Navigator.of(context).pop(), 
  //           )
  //       ]
  //     );
  //   }
  // );


}


 //  return Center(
  //    child: Text(
  //       'Hello World Travel',
  //       textDirection: TextDirection.rtl,
  //       ),
  //  );
  //  child: Text(
  //           "Stock Prices",
  //           style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),
  //         ),
// class AppWidget extends StatefulWidget{
//   AppWidget(){
//     debugPrint("App Widget - constructor -" + hashCode.toString());
//   }
//   @override
//   _AppWidgetState createStore(){
//     debugPrint("AppWidget - createState -" + hashCode.toString());
//     return _AppWidgetState();
//   }
// }

// class _AppWidgetState extends State<AppWidget>{
//   bool _bright = false;

//   _brightnessCallback(){
//     setState(() => _bright = !_bright);
//   }
//   @override
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("_AppWidgetState -build - " + hashCode.toString());
//     return MaterialApp(
//       title: "Image Viewer",
//       theme:ThemeData(
//         primarySwatch: Colors.blue,
//         brightness: _bright ? Brightness.light : Brightness.dark
//       ),
//       home:FlowerWidget(
//           imageSrc:_bright  ? "https://www.viewbug.com/media/mediafiles/" + "2015/07/05/56234977_large1300.jpg" : "https://images.unsplash.com/" + "photo-1531603071569-0dd65ad72d53?ixlib=rb-1.2.1&ixid=" + "eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
//           brightnessCallback:_brightnessCallback
//       )
//     );
//   }
// }


// class FlowerWidget extends StatefulWidget{
//   final String imageSrc;
//   final VoidCallback brightnessCallback();

//   FlowerWidget({Key key, this.imageSrc, this.brightnessCallback}) : super(key: key){
//       debugPrint("FlowerWidget - constructor -" + hashCode.toString());
//   }

//   @override
//   _FlowerWidgetState createState(){
//     debugPrint("FlowerWidget - createState - " + hashCode.toString());
//     return _FlowerWidgetState();
//   }

// }


// class _FlowerWidgetState extends State<FlowerWidget>{
//   double _blur = 0;
//   _FlowerWidgetState(){
//     debugPrint("_FlowerWidgetState - constructor - " + hashCode.toString());
//   }

//   @override
//   void initState() {
//     debugPrint("_FlowerWidgetState -initState-" + hashCode.toString());
//   }

  
// }
/** STATE
 * createState()
 * build()
 * initState()
 * didChangeDependencies()
 * didUpdateWidget()
 */

/* 
void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return new MaterialApp(
      title:"Flutter Demo",
      theme:new ThemeData(
        primarySwatch:Colors.blue
      ),
          home:new MyHomePage(title:"News"),
    );
  }
}


class MyHomePage extends StatelessWidget{
  MyHomePage({Key key, this.title}) : super(key:key);
  final String title;
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title:new Text(this.title)
      ),
      body: new ListView(children: <Widget>[
      StockWidget('240', 'TSLA', 'Elon Musk','https://media.beam.usnews.com/d1/d8/8501ba714a21aed9a7327e02ade1/180515-10thingselonmusk-editorial.jpg'),
      StockWidget('118', 'APPL', 'Tim Cook','https://observer.com/wp-content/uploads/sites/2/2020/08/GettyImages-1178685494.jpg?quality=80'),
      StockWidget('1000', 'GOOG', 'Goodness', 'https://pbs.twimg.com/profile_images/1277224317126938624/XeHVg7YI.jpg')  
      ],)
      );
  }
}

class StockWidget extends StatelessWidget{
  StockWidget(this.stockprice,this.stockname, this.ceo, this.img) : super();
  final String stockprice;
  final String stockname;
  final String ceo;
  final String img;
 @override

  Widget build(BuildContext context) {
    
    return Padding(
      padding:EdgeInsets.all(25.0),
      child:Container(
        decoration: BoxDecoration(border:Border.all()),
        padding: EdgeInsets.all(20.0),
         child:Center(
            child: Column(children: <Widget>[
              Text(
                   "\$${ceo} ${stockname} ${stockprice}",
                  style: TextStyle(fontSize: 24.0),
                  ),
              // Text(),
              Padding(
                padding: EdgeInsets.only(top:20.0),
                 child:Image.network(img)
              ),
              // Text(ceo),
            ],),
          )
      )
     
    );
  }
}


*/