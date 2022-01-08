import 'package:flutter/material.dart';
import './home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          IconButton(
            icon: Icon(Icons.home,
                color: currentPage == 0
                    ? const Color.fromRGBO(203, 73, 101, 1)
                    : const Color.fromRGBO(40, 40, 40, 1)),
            onPressed: () {
              setState(() {
                currentPage = 0;
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: currentPage == 1
                  ? const Color.fromRGBO(203, 73, 101, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
            onPressed: () {
              setState(() {
                currentPage = 1;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.ondemand_video),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
