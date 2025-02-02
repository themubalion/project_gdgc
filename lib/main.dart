import 'package:flutter/material.dart';
import 'package:project/bottom_nav.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // AppBar containing Event Detail text and back button
        appBar: AppBar(
          // I am using two containers here so that I could make the shadow around the border, if it doesn't works you can just make them a single container
          title: Container(
            margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(180, 171, 165, 1), // Border color
                width: 2.0, // Border width
              ),
              // boxShadow: const [
              //   BoxShadow(
              //     color: Color.fromRGBO(
              //       205,
              //       151,
              //       144,
              //       1,
              //     ),
              //     offset: Offset(0, 1)
              //   ),
              // ],
              borderRadius: BorderRadius.circular(28), // Rounded edges
            ),
            child: const Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.chevron_left_sharp,
                  size: 32,
                  color: Color.fromARGB(255, 252, 186, 86),
                ),
                Text(
                  "Event Detail",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          // Scrollable content Container

          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(38, 18, 32, 12),

                //Scrollable content

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Widget

                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/image/placeholder_image.jpg',
                        color: const Color.fromARGB(255, 83, 79, 79),
                      ),
                    ),

                    // Widget for Event Title

                    Container(
                      margin: const EdgeInsets.only(top: 12, bottom: 12),
                      // Background colour for alignment debugging
                      // decoration: BoxDecoration(color: Colors.green),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Key Themes',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black,
                                          offset: Offset(.5, .5),
                                          blurRadius: .4)
                                    ]),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: const Text(
                                        'Gemini',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 8),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: const Text(
                                        'Networking',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                // The textButton here have default margins, I don't know how to remove the default margins

                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2, horizontal: 12),
                                    minimumSize: const Size(0, 0),
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap
                                  ),
                                  child: const Row(
                                    children: [
                                      Text('REGISTER NOW'),
                                      Icon(Icons.chevron_right_sharp)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  child: const Text(
                                    'Event Name',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black,
                                          offset: Offset(1, 1),
                                        ),
                                      ],
                                    ),
                                  )),
                              const Text(
                                '6th July, 6:00-7:30PM (GMT+5:30)',
                                style: TextStyle(fontSize: 10),
                              ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: const Text(
                        'About this event',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              offset: Offset(.5, .5),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Join Us for an Inspiring Info Session on the Google Solution Challenge! 🎉 \n \nDiscover how technology can solve real-world problems and contribute to achieving UN Sustainable Development Goals (SDGs).\n\n✨ What to Expect:\n\n- Exclusive Insights from a Google Solution Challenge Finalist🏆\n\n- Inspiration and Guidance to build impactful projects\n\n- Tips and Strategies to ace this Global-Level Hackathon',
                    ),
                  ],
                ),
              ),
              const Text('Speaker:', style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
              Container(
                margin: const EdgeInsets.only(top: 8, bottom: 8),
                child: ClipOval(
                  child: Image.asset(
                    'assets/image/placeholder_image.jpg',
                    height: 100,
                    color:
                        const Color.fromARGB(255, 89, 83, 83),
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                'Akash Srivastava',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}