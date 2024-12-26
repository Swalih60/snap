import 'package:flutter/material.dart';
import 'package:snap/components/chip.dart';
import 'package:swipe_cards/swipe_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<SwipeItem> _swipeItems;
  late MatchEngine _matchEngine;

  @override
  void initState() {
    super.initState();
    _swipeItems = [
      SwipeItem(content: "Card 1"),
      SwipeItem(content: "Card 2"),
      SwipeItem(content: "Card 3"),
    ];

    _matchEngine = MatchEngine(
      swipeItems: _swipeItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Container(
              color: const Color.fromRGBO(89, 69, 254, 1), // Top color
            ),
          ),
          Positioned(
            top: screenHeight / 2, // Start at half the screen
            child: Container(
              height: screenHeight / 2,
              width: screenWidth,
              color: Colors.black, // Bottom color
            ),
          ),
          // Foreground content
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // Header Section
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/main.jpg"),
                        radius: 20,
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(right: 130.0),
                        child: Column(
                          children: [
                            Text(
                              "Hi Fajar Kun",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(Icons.location_on),
                                Text(
                                  "Kerala , India",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.notifications,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Swipable Card Section
                Expanded(
                  child: Stack(
                    children: [
                      SwipeCards(
                        matchEngine: _matchEngine,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            clipBehavior: Clip
                                .none, // Allow positioning outside the stack
                            children: [
                              Card(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: ClipPath(
                                  clipper: ChatButtonClipper(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "assets/images/main.jpg", // Replace with actual image
                                      fit: BoxFit.cover,
                                      height: screenHeight /
                                          1.6, // Adjust height to avoid touching button
                                      width: screenWidth,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 450,
                                  left: 20,
                                  child: Chipp(
                                    text: "Kerala , India",
                                  )),
                              Positioned(
                                bottom: 100,
                                left: 20,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Nur Aisyah, 24",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Chipp(
                                          text: 'Fashion',
                                        ),
                                        SizedBox(width: 5),
                                        Chipp(
                                          text: 'Music',
                                        ),
                                        SizedBox(width: 5),
                                        Chipp(
                                          text: 'Cooking',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        onStackFinished: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("No more cards!"),
                              padding: EdgeInsets.all(10),
                            ),
                          );
                        },
                        upSwipeAllowed: false,
                        fillSpace: true,
                      ),
                      // Chat Button Positioned Slightly Below the Cards
                      Positioned(
                        bottom: 5,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: SizedBox(
                              height: 70,
                              width: 70,
                              child: FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Colors.blue,
                                child: const Icon(
                                  Icons.chat,
                                  color: Colors.white,
                                  size: 32,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Bottom Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox(
                          height: 70,
                          width: 164,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor:
                                const Color.fromRGBO(39, 40, 53, 1),
                            child: const Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox(
                          height: 70,
                          width: 164,
                          child: FloatingActionButton(
                            onPressed: () {},
                            backgroundColor: Colors.yellow,
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.black,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - 60);
    path.lineTo(size.width / 2 - 40, size.height - 60);
    path.quadraticBezierTo(size.width / 2, size.height - 100,
        size.width / 2 + 40, size.height - 60);
    path.lineTo(size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
