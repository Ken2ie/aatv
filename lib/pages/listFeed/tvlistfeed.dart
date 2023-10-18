import 'package:flutter/material.dart';

class tvListFeed extends StatefulWidget {
  const tvListFeed({super.key});

  @override
  State<tvListFeed> createState() => _tvListFeedState();
}

class _tvListFeedState extends State<tvListFeed> {
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
                                      child: Image.asset('assets/png/breakthroughHour1.png',
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
                                          'Watch',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900
                                          ),
                                        )
                                        )
                                                  ],
                                                ),
                                            Text('Live on AATV and all social media streaming platforms is Break Through Hour with Evangelist Akwasi Awuah at Sikka FM 89.5 Hz.',
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