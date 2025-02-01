import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // AppBar containing Event Detail text and back button
        appBar: AppBar(
          // I am using two contianers here so that I could make the shadow around the border, if it doesn't works you can just make them a single container
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.keyboard_arrow_left_sharp, size: 28),
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

          child: Container(
            margin: const EdgeInsets.fromLTRB(38, 18, 32, 12),

            //Scollable content

            child: Column(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Key Themes',
                            style: TextStyle(fontSize: 16),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 1),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: const Text(
                                    'Gemini',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 1),
                                      borderRadius: BorderRadius.circular(16)),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 12),
                                  minimumSize: const Size(0, 0)),
                              child: const Row(
                                children: [
                                  Text('REGISTER NOW'),
                                  Icon(Icons.chevron_right_sharp)
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
