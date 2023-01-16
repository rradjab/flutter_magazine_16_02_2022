import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(const SatishApp());
}

class SatishApp extends StatelessWidget {
  const SatishApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Satish proqrami',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
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
  void _incrementCounter() {
    setState(() {});
  }

  int textButtonCount = 0;
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      body: ListView.separated(
        itemCount: 5,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final data = items[index];
          return ListTile(
            trailing: const Icon(Icons.arrow_forward_ios),
            title: Text(
              data,
              style: const TextStyle(fontSize: 25.0),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            },
          );
        },
      ),
      // Padding(
      //   padding: const EdgeInsets.all(10),
      //   child: IntrinsicHeight(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.stretch,
      //       children: [
      //         TextButton(
      //           onPressed: () {
      //             setState(() {
      //               textButtonCount++;
      //             });
      //           },
      //           child: Text("Text $textButtonCount"),
      //         ),
      //         DropdownButton(
      //           // Initial Value
      //           value: dropdownvalue,

      //           // Down Arrow Icon
      //           icon: const Icon(Icons.keyboard_arrow_down),

      //           // Array list of items
      //           items: items.map((String items) {
      //             return DropdownMenuItem(
      //               value: items,
      //               child: Text(items),
      //             );
      //           }).toList(),
      //           // After selecting the desired option,it will
      //           // change button value to selected value
      //           onChanged: (String? newValue) {
      //             setState(() {
      //               dropdownvalue = newValue!;
      //             });
      //           },
      //         ),
      //         IconButton(
      //           onPressed: () {
      //             debugPrint("IconButton Pressed");
      //           },
      //           icon: const Icon(Icons.abc),
      //         ),
      //         InkWell(
      //           // When the user taps the button, show a snackbar.
      //           onTap: () {
      //             ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      //               content: Text('Tap'),
      //             ));
      //           },
      //           child: const Padding(
      //             padding: EdgeInsets.all(12.0),
      //             child: Text('Flat Button'),
      //           ),
      //         ),
      //         PopupMenuButton(
      //           onSelected: (value) {
      //             debugPrint(value);
      //           },
      //           itemBuilder: (BuildContext bc) {
      //             return const [
      //               PopupMenuItem(
      //                 value: '/hello',
      //                 child: Text("Hello"),
      //               ),
      //               PopupMenuItem(
      //                 value: '/about',
      //                 child: Text("About"),
      //               ),
      //               PopupMenuItem(
      //                 value: '/contact',
      //                 child: Text("Contact"),
      //               )
      //             ];
      //           },
      //         ),
      //         OutlinedButton(
      //           style: OutlinedButton.styleFrom(
      //             backgroundColor: Colors.black, //<-- SEE HERE
      //           ),
      //           onPressed: () {
      //             debugPrint("Outlined");
      //           },
      //           child: const Text(
      //             'Outlined Button',
      //             style: TextStyle(fontSize: 40),
      //           ),
      //         ),
      //         FloatingActionButton(
      //           onPressed: _incrementCounter,
      //           tooltip: 'Increment',
      //           child: const Icon(Icons.add),
      //         ),
      //         FadeInImage.memoryNetwork(
      //           placeholder: kTransparentImage,
      //           width: 72,
      //           height: 72,
      //           image: 'https://picsum.photos/250?image=9',
      //         ),
      //         SizedBox(
      //           width: 20,
      //           height: 80,
      //           child: Placeholder(
      //             fallbackHeight: 25.0,
      //           ),
      //         ),
      //         // Expanded(
      //         //   child: ListView.builder(
      //         //     shrinkWrap: true,
      //         //     scrollDirection: Axis.horizontal,
      //         //     itemCount: 9,
      //         //     itemBuilder: (BuildContext context, int index) => Card(
      //         //       child: SizedBox(
      //         //         height: 500,
      //         //         child: Center(
      //         //           child: Column(children: [
      //         //             Image.asset('assets/images/$index.png'),
      //         //             Text("Windows $index"),
      //         //           ]),
      //         //         ),
      //         //       ),
      //         //     ),
      //         //   ),
      //         // ),
      //         // Expanded(
      //         //   child: ListView.builder(
      //         //     shrinkWrap: true,
      //         //     itemCount: 9,
      //         //     itemBuilder: (BuildContext context, int index) => Card(
      //         //       child: Center(
      //         //         child: Column(children: [
      //         //           Image.asset('assets/images/$index.png'),
      //         //           Text("Windows $index"),
      //         //         ]),
      //         //       ),
      //         //     ),
      //         //   ),
      //         // ),
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black,
        onTap: null,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
// Removing SecondRoute
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
