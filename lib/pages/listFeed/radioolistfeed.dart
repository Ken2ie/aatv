import 'package:flutter/material.dart';

class radioListFeed extends StatefulWidget {
  const radioListFeed({super.key});

  @override
  State<radioListFeed> createState() => _radioListFeedState();
}

class _radioListFeedState extends State<radioListFeed> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //  Live feed for one feed
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset('assets/png/breakthroughHour2.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  // SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text('Break Through Hour',
                                              style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700
                                              ),
                                            ),
                                            TextButton(
                                          onPressed: (){}, 
                                        child: Text(
                                          'Listen',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900
                                          ),
                                        )
                                        )
                                                  ],
                                                ),
                                            Text('Live on Akwasi Awuah Online radio at Sikka FM.',
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400
                                              ),
                                            )
                                        
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
  }
}