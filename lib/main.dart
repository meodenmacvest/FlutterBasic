import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Learning Container

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Material Design',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             color: Colors.blue[900],
//             width: 300,
//             height: 300,
//             transform: Matrix4.rotationZ(0.1),
//             child: Container(
//               child: Text('Word'),
//               margin: EdgeInsets.all(50),
//               padding: EdgeInsets.all(50),
//               alignment: Alignment.center,
//               transform: Matrix4.rotationZ(0.1),
//               color: Color.fromARGB(224, 41, 128, 1),
//               width: 300,
//               height: 300,
//               ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// Learing Row and Column

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Column and Row',
//       home: Container(
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget> [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Container( color: Colors.amber, width: 100,height: 100,),
//                   Container( color: Colors.red, width: 100,height: 100,),
//                 ],
//               ),
//               Column(
//                 children: [
//                   Container( color: Colors.blue, width: 100,height: 100,),
//                   Container( color: Colors.white, width: 100,height: 100,),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Learing Axis Alignment
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // title: 'Alignment',
//       // home: Center(
//       //   child: Container(
//       //     color: Colors.white,
//       //     child: Row(
//       //       mainAxisAlignment: MainAxisAlignment.center,
//       //       mainAxisSize: MainAxisSize.max,
//       //       children: <Widget>[
//       //         Container( color: Colors.blue,width: 50,height: 50,),
//       //         Container( color: Colors.red,width: 50,height: 50,),
//       //         Container( color: Colors.green,width: 50,height: 50,),
//       //         Container( color: Colors.yellow,width: 50,height: 50,)
//       //       ],
//       //     ),
//       //   ),
//       // ),
//       // title: 'Expanded',
//       // home: Container(
//       //   child: Row(
//       //     children: <Widget>[
//       //       Expanded(child: Container( color: Colors.blue)),
//       //       Expanded(child: Container( color: Colors.red),flex: 2,),
//       //       Expanded(child: Container( color: Colors.yellow)),
//       //       Expanded(child: Container( color: Colors.green)),
//       //     ],
//       //   ),
//       // ),
//       // home: Center(
//       //   child: Container(
//       //     child: Row(
//       //       crossAxisAlignment: CrossAxisAlignment.baseline,
//       //       textBaseline: TextBaseline.alphabetic,
//       //       children: [
//       //         Text('baseline', style: TextStyle(color: Colors.blue,fontSize: 50),),
//       //         Text('baseline', style: TextStyle(color: Colors.blue,fontSize: 25),)
//       //       ],
//       //     ),
//       //   ),
//       // ),
//       home: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           verticalDirection: VerticalDirection.up,
//           children: [
//             Text('direction', style: TextStyle(color: Colors.blue,fontSize: 30),),
//             Text('direction', style: TextStyle(color: Colors.pink,fontSize: 20),)
//           ],
//         ),
//       ),
//     );
//   }
// }

// Learing ListView
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // const data = [
//     //   Text('1'),Text('2'),Text('3'),Text('4'),Text('5'),
//     // ];
//     // return MaterialApp(
//     //   home: Scaffold(
//     //     body: ListView(
//     //       children: data,
//     //     ),
//     //   ),
//     // );
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('ListView'),),
//         body: ListView(
//         children: [
//           _menuItem("setting", Icon(Icons.settings)),
//           _menuItem("map", Icon(Icons.map)),
//           _menuItem("location", Icon(Icons.room)),
//           _menuItem("shipping", Icon(Icons.local_shipping)),
//           _menuItem("airplane mode", Icon(Icons.airplanemode_active)),
//         ],
//         ),
//       ),
//     );
//   }
//
//   Widget _menuItem(String title, Icon icon) {
//     return GestureDetector(
//       child: Container(
//         padding: EdgeInsets.all(10),
//         decoration: new BoxDecoration(
//           border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
//         ),
//         child: Row(
//           children: [
//             Container(
//               margin: EdgeInsets.all(10),
//               child: icon,
//             ),
//             Text(title, style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//             ),)
//           ],
//         ),
//       ),
//       onTap: () {
//         print('ontap called');
//       },
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   Widget _messageItem(String title) {
//     return Container(
//       decoration: new BoxDecoration(
//         border: new Border(bottom: BorderSide(width: 1.0,color: Colors.grey))
//       ),
//       child: ListTile(
//         title: Text(
//           title,
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 18.0
//           ),
//         ),
//         onTap: () {
//           print('onTap called');
//         },
//         onLongPress: () {
//           print('onLongPress called');
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var list = ['1','2','3','4','5'];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('listview'),
//         ),
//         body: ListView.builder(
//             itemBuilder: (BuildContext context, int index) {
//               if (index >= list.length) {
//                 list.addAll(['6','7','8','9']);
//               }
//               return _messageItem(list[index]);
//             }
//         ),
//       ),
//     );
//   }
// }


// Learning Transition
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//       routes: <String, WidgetBuilder> {
//         '/home': (BuildContext context) => new MainPage(),
//         '/subpage': (BuildContext context) => new SubPage()
//       },
//     );
//   }
// }
//
// class MainPage extends StatelessWidget {
//   const MainPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text('Navigator'),
//       ),
//       body: new Container(
//         padding: EdgeInsets.all(32.0),
//         child: Center(
//           child: new Column(
//             children: <Widget>[
//               Text('Main'),
//               ElevatedButton(
//                   // onPressed: () => Navigator.of(context).pushNamed("/subpage"),
//                   onPressed: () => Navigator.of(context).pushReplacementNamed("/subpage"),
//                   child: new Text('Go to subpage'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class SubPage extends StatelessWidget {
//   const SubPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: new AppBar(
//         title: new Text('Navigator'),
//       ),
//       body: new Container(
//         padding: EdgeInsets.all(32.0),
//         child: Center(
//           child: new Column(
//             children: <Widget>[
//               Text('Sub'),
//               // ElevatedButton(
//               //     onPressed: () => Navigator.of(context).pop(),
//               //     child: new Text('Back to mainPage'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      routes: <String, WidgetBuilder> {
        '/home':(BuildContext context) => new MainPage(),
        '/sub1page':(BuildContext context) => new SubPage(page: Pages.PAGE1),
        '/sub2page':(BuildContext context) => new SubPage(page: Pages.PAGE2),
        '/sub3page':(BuildContext context) => new SubPage(page: Pages.PAGE3)
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget> [
              Text('Main'),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed("/sub1page"),
                  child: new Text('Sub Page 1'))
            ],
          ),
        ),
      ),
    );
  }
}

enum Pages {
  PAGE1,
  PAGE2,
  PAGE3,
}

class SubPage extends StatelessWidget {
  final Pages page;
  SubPage({required this.page});

  @override
  Widget build(BuildContext context) {
    List<Widget> widget;
    switch(page) {
      case Pages.PAGE1:
        widget = <Widget> [
          Text('Sub1'),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed("/sub2page"),
              child: new Text('Next')),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('Back'))
        ];
        break;

      case Pages.PAGE2:
        widget = <Widget> [
          Text('Sub2'),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed("/sub3page"),
              child: new Text('Next')),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('Back'))
        ];
        break;

      case Pages.PAGE3:
        widget = <Widget> [
          Text('Sub3'),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed("/sub1page"),
              child: new Text('Next')),
          ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: new Text('Back'))
        ];
        break;
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigator'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: Column(
            children: widget,
          ),
        ),
      ),
    );
  }
}

// class SubPage extends StatelessWidget {
//   final Pages page;
//   SubPage({required this.page});
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> widget;
//     switch(page) {
//       case Pages.PAGE1:
//         widget =  <Widget>[
//           Text('Sub1'),
//           ElevatedButton(
//             onPressed: () =>  Navigator.of(context).pushNamed("/sub2page"),
//             child: new Text('next'),),
//           ElevatedButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: new Text('back')),
//         ];
//         break;
//       case Pages.PAGE2:
//         widget =  <Widget>[
//           Text('Sub2'),
//           ElevatedButton(
//             onPressed: () =>  Navigator.of(context).pushNamed("/sub3page"),
//             child: new Text('next'),),
//           ElevatedButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: new Text('back')),
//         ];
//         break;
//       case Pages.PAGE3:
//         widget =  <Widget>[
//           Text('Sub3'),
//           ElevatedButton(
//               onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil("/sub1page",
//                   ModalRoute.withName("/home")),
//                   child: new Text('subpage1)),
//           ElevatedButton(
//               onPressed: () => Navigator.of(context).pop(),
//               child: new Text('back')),
//         ];
//         break;
//
//     }
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Navigator'),
//       ),
//       body: new Container(
//         padding: new EdgeInsets.all(32.0),
//         child: new Center(
//           child: new Column(
//               children: widget
//           ),
//         ),
//       ),
//     );
//   }
// }

