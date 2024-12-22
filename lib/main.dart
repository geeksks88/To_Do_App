import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // Define the primary color
          primaryColor: Color.fromRGBO(125, 249, 255, 1),
          hintColor: Color.fromRGBO(125, 249, 255, 1),
          appBarTheme: AppBarTheme(
            color: Color.fromRGBO(125, 249, 255, 1),
          )),
      home: const MyHomePage(title: 'To_Do_App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var todotext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontFamily: 'appbar', fontSize: 32),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 220,
            width: 400,
            color: Color.fromRGBO(125, 249, 255, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black26,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 7,
                          spreadRadius: 3,
                        )
                      ]),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/sujal.jpg'),
                  ),
                ),
                Text(
                  'Welcome Sujal Singh',
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: 'name pro',
                      wordSpacing: 5),
                )
              ],
            ),
          ),
          Container(
            height: 250,
            width: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Good Afternoon',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Task List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 280,
            width: 350,
            child: Card(
              color: Colors.white,
              shadowColor: Colors.black,
              elevation: 25,
              child: Padding(
                padding: EdgeInsets.only(top: 5, left: 20, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Daily Task',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        IconButton(
                          onPressed: () {

                          },
                          iconSize: 35,
                          icon: Icon(Icons.add),
                        )
                      ],
                    ),
                    Container(
                      width: 400,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(width: 0.10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8.0),
                        child: ListView.builder(itemBuilder: (context,index)=>ListTile(
                          leading: IconButton(onPressed: (){}, iconSize: 40,icon: Icon(Icons.check_box_outline_blank)),
                          title: Text('Name'),
                          subtitle: Text('date & time',style: TextStyle(
                            fontSize: 10,
                          ),),
                          trailing: IconButton(onPressed: (){}, iconSize: 40,icon: Icon(Icons.delete_outline_outlined)),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


