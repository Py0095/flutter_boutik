import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'boutikLakay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'boutikLakay'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            const Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 12, 96, 222),
      ),
      drawer: const DrawerComponent(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50),
            const Category(),
            const SizedBox(height: 20),
            const Category(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 20),
                Expanded(
                  child: const ProductList(),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: const ProductList(),
                ),
                const SizedBox(width: 20),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: const Color.fromARGB(255, 222, 198, 12),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 141, 147, 156),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'akèy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, size: 30),
            label: 'panier',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: 'Konekte',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 12, 96, 222),
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      alignment: Alignment.bottomRight,
      child: const Text('Kategori',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
      width: 380,
      height: 200,
      color: const Color.fromARGB(255, 7, 4, 64),
    );
  }
}

class ProductList extends StatelessWidget {
  final String? title;

  const ProductList({Key? key,this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetail(title:'Detay pwodwi')));
            },
            child: Container(
              height: 150,
              width: 300,
              color: const Color.fromARGB(255, 19, 9, 95),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Savon',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 19, 9, 95),
            ),
          ),
          const Text(
            'Li de kalite se yon savon ki fet\n ak baz de myel li bon pou tach, \nak dives lot bagay',
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 19, 9, 95),
            ),
          ),
          Row(
            children: [
              const Icon(Icons.shopping_cart, size: 35, color: Colors.black),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.favorite,
                  size: 35, color: Color.fromARGB(255, 19, 9, 95))
            ],
          )
        ],
      ),
    );
  }
}

//Product Detail component
class ProductDetail extends StatelessWidget {
  final String title;
  const ProductDetail({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Detay pwodwi',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
            const Icon(Icons.shopping_cart, size: 30, color: Colors.white),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 12, 96, 222),
      ),
            drawer: const DrawerComponent(),

      body: Center(

        child:  Container(

      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             const SizedBox(height: 40),
             
          Container(

            height: 250,
            width: 380,
            color: Color.fromARGB(255, 19, 9, 95),
          ),
          const SizedBox(height: 20),

          Padding(padding: const EdgeInsets.all(20),
          child:  Text('Li de kalite se yon savon ki fet\ak baz de myel li bon pou tach, \nak dives lot bagay, savon sa fet ak dives eleman natirel li bon \n pou moun kif anpil maladi,mwen tap konseyew achte sa von \nsila wap we mevew li.', style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 19, 9, 95),
          ),),
          ),

        ],

      ),
    ),

      )
    );
  }
}

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 12, 96, 222),
            ),
            child: Text(
              'boutikLakay',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: const Text('Konekte', style: TextStyle(fontSize: 20)),
            leading: const Icon(Icons.person),
          ),
          ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductList(title:'Detay pwodwi'))),
            title: const Text('Lis pwodwi', style: TextStyle(fontSize: 20)),
            leading: const FaIcon(FontAwesomeIcons.newspaper, size: 20),
          ),
          ListTile(
            title: const Text('Dekonekte', style: TextStyle(fontSize: 20)),
            leading: const Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}

