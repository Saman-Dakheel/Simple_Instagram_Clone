import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> allPosts = [
      'images/image1.jpg',
      'images/image2.jpg',
      'images/image3.jpg',
      'images/image4.jpg',
      'images/image5.jpg',
      'images/image6.jpg',
      'images/image7.jpg',
      'images/image8.jpg',
      'images/image9.jpg',
      'images/image10.jpg',
      'images/image11.jpg',
      'images/image12.jpg',
      'images/image13.jpg',
      'images/image14.jpg',
      'images/image15.jpg',
      'images/image16.jpg',
      'images/image17.jpg',
      'images/image18.jpg',
      'images/image19.jpg',
      'images/image20.jpg',
    ];
    List<String> buttons = [
      'IGTV',
      'Travil',
      'Architecture',
      'Decor ',
      'style',
      'food',
      'ART',
      'Beauty',
      'DIY',
      'Music',
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  contentPadding: const EdgeInsets.all(0),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  filled: true,
                  fillColor: const Color.fromRGBO(220, 220, 220, 1)),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.person_add,
                ),
                onPressed: () {},
              )
            ],
          ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      buttons[index],
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
