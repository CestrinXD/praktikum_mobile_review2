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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final titles = ['Bike', 'Boat', 'Bus'];
    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus
    ];

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //     // Here we take the value from the MyHomePage object that was created by
    //     title: Text(widget.title),
    //   ),

    return Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
          backgroundColor: Colors.deepOrange[300],
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, nomor) {
              return Card(
                  child: ListTile(
                leading: CircleAvatar(
                  // icons[nomor],
                  backgroundImage:
                      NetworkImage("https://picsum.photos/200/300?=$nomor"),
                ),
                title: Text(titles[nomor]),
              ));
            })

        // body: ListView(
        //   children: const [
        //     ListTile(
        //       // leading: Icon(Icons.sunny)
        //       leading: CircleAvatar(
        //         backgroundImage: AssetImage("bungamatahari.jpeg"),
        //       ),
        //       title: Text("Sun"),
        //       trailing: Icon(Icons.keyboard_arrow_right),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.brightness_3),
        //       title: Text("Moon"),
        //       trailing: Icon(Icons.keyboard_arrow_right),
        //     ),
        //     ListTile(
        //       leading: Icon(Icons.star),
        //       title: Text("Star"),
        //       trailing: Icon(Icons.keyboard_arrow_right),
        //     ),
        //   ],
        // )

        // body: ListView(
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.green,
        //     ),
        //   ],
        // ), // This trailing comma makes auto-formatting nicer for build methods.
        // body: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 4,
        //   ),
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       decoration: const BoxDecoration(
        //         // color: Colors.red,
        //         image: DecorationImage(
        //           image: AssetImage("anime.jpg"),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       // color: Colors.blue,
        //       child: Image.network("https://picsum.photos/200"),
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.black,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),
        );
  }
}
