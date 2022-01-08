import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImage = [
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
  ];
  List<String> posts = [
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
  Future<void> onRefresh() async {
    await Future.delayed(const Duration(
      seconds: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/insta_title.png',
          height: 50,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {},
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    10,
                    (index) => Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: const AssetImage(
                              'images/insta_story.png',
                            ),
                            child: CircleAvatar(
                              radius: 32,
                              backgroundImage: AssetImage(
                                profileImage[index],
                              ),
                            ),
                          ),
                          const Text(
                            'Profile name',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Column(
                children: List.generate(
                    10,
                    (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //header post
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(
                                    10.0,
                                  ),
                                  child: CircleAvatar(
                                    radius: 14,
                                    backgroundImage: const AssetImage(
                                      'images/insta_story.png',
                                    ),
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundImage: AssetImage(
                                        profileImage[index],
                                      ),
                                    ),
                                  ),
                                ),
                                const Text('Profile Name'),
                                const Spacer(),
                                IconButton(
                                  icon: const Icon(Icons.more_vert),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            // Image Posts
                            Image.asset(posts[index]),
                            // Footer posts
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(Icons.chat_bubble_outline),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(Icons.bookmark_border),
                                  onPressed: () {},
                                ),
                                const Spacer(),
                                IconButton(
                                  icon: const Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      children: [
                                        TextSpan(text: 'Liked by'),
                                        TextSpan(
                                          text: ' Profile Name',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(text: ' and'),
                                        TextSpan(
                                          text: ' others',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(
                                          text: 'Profile Name',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                            text:
                                                ' This is the best post have ever put on instagram , and this why i comment it  ')
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'View All 12 commets  ',
                                    style: TextStyle(color: Colors.black54),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
