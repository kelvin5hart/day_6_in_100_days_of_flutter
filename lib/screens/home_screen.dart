import 'package:carousel_slider/carousel_slider.dart';
import 'package:day_6_in_100_days_of_flutter/data/constants.dart';
import 'package:day_6_in_100_days_of_flutter/data/workout_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.sports_gymnastics_rounded, color: iconColor, size: 30,),
            ),
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white24),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Icon(Icons.notifications),
                ),
                Positioned(top: -2,right: -2,child: Container(height: 10, width: 10, decoration: BoxDecoration(color: primaryColor, borderRadius: BorderRadius.circular(10)),))

              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // Upper Section with Name and Timer
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: secondaryColor, gradient: backgroundGradient),
                child: SafeArea(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Welcome",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Anya!",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 3,
                                height: 20,
                                color: primaryColor,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                "Upcoming Sessions",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 0, color: Colors.white)),
                      ),
                      Container(
                        height: 80,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: const BoxDecoration(
                                color: iconColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.timer,
                                    color: primaryColor,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        "Cardio Room",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        "Hotel Nasir, Dubai",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: const BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Session Starts in",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10),
                                  ),
                                  Text(
                                    "45:20",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),

          //Bottom Section with videos
          Expanded(
              flex: 3,
              child: CarouselSlider(
                items: workoutVideos
                    .map((e) => Stack(
                          alignment: AlignmentDirectional.bottomStart,
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.all(10),
                              height: double.infinity,
                              width: double.infinity,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                    e,
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            const Positioned(
                                bottom: 50,
                                left: 30,
                                child: Text(
                                  "Workout Videos",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ))
                    .toList(),
                options: CarouselOptions(
                    aspectRatio: 0.9, viewportFraction: 0.8),
              ))
        ],
      ),
    );
  }
}
