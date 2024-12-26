import 'package:flutter/material.dart';
import 'package:snap/components/chip.dart';
import 'package:snap/components/clipper.dart';
import 'package:swipe_cards/swipe_cards.dart';

class Swipee extends StatelessWidget {
  const Swipee(
      {super.key, required this.matchEngine, required this.h, required this.w});

  final matchEngine;
  final h;
  final w;

  @override
  Widget build(BuildContext context) {
    return SwipeCards(
      matchEngine: matchEngine,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          clipBehavior: Clip.none,
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
                    "assets/images/main.jpg",
                    fit: BoxFit.cover,
                    height: h / 1.6,
                    width: w,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 30,
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
                  const Text(
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
                      const SizedBox(width: 5),
                      Chipp(
                        text: 'Music',
                      ),
                      const SizedBox(width: 5),
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
    );
  }
}
