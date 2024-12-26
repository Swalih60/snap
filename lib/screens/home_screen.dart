import 'package:flutter/material.dart';
import 'package:snap/components/cross_button.dart';
import 'package:snap/components/love_button.dart';
import 'package:snap/components/swipecard.dart';
import 'package:swipe_cards/swipe_cards.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<SwipeItem> _swipeItems;

  @override
  void initState() {
    super.initState();
    _swipeItems =
        List.generate(20, (index) => SwipeItem(content: "Card ${index + 1}"));
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: const Color.fromRGBO(89, 69, 254, 1),
            ),
          ),
          Positioned(
            top: screenHeight / 2,
            child: Container(
              height: screenHeight / 2,
              width: screenWidth,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/main.jpg"),
                        radius: 20,
                      ),
                      const Column(
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
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Icon(Icons.notifications,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Stack(
                    children: [
                      Swipee(
                          matchEngine: MatchEngine(
                            swipeItems: _swipeItems,
                          ),
                          h: screenHeight,
                          w: screenWidth),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const SizedBox(
                          height: 70,
                          width: 160,
                          child: CrossButton(),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const SizedBox(
                          height: 70,
                          width: 160,
                          child: LoveButton(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
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
