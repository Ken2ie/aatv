import 'package:aatvmobilevsn/constant/const.dart';
import 'package:aatvmobilevsn/pages/listFeed/radioolistfeed.dart';
import 'package:aatvmobilevsn/pages/listFeed/tvlistfeed.dart';
import 'package:aatvmobilevsn/pages/livefeed/livefeedVideo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aatvmobilevsn/custom-widgets/live_button.dart';
import 'package:aatvmobilevsn/custom-widgets/tv_radio_toggle.dart';

import '../../custom-widgets/userprofile.dart';
import 'offering.dart';

class HomeUser extends StatefulWidget {
  const HomeUser({super.key});

  @override
  State<HomeUser> createState() => _HomeUserState();
}

class _HomeUserState extends State<HomeUser> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: UserProfile(),
              title: TextButton(
                              onPressed: (){

                              }, 
                              child: Text('Live Feeds',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                              ), 
                              )
                              ),
              centerTitle: true,
              actions: [
                LiveButton()
              ],
            ),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 7.0),
                        child: Flex(
                        direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: (){}, 
                              child: Text('Events',
                                style: TextStyle(
                                  color: Colors.black
                                ),
                              )
                              ),
                            TextButton(
                              onPressed: (){
                                 Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Offering(),
                                   ));
                              }, 
                              child: Text('Offering',
                                style: TextStyle(
                                  color: Colors.black
                                ),
                              )
                            )
                          ],
                        ),
                      ),
                      // TV OR RADIO
                      tvOrRadio ? 
                      tvListFeed() : radioListFeed()
                    ],
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: tvOrRadio? FloatingActionButton(
            child: Icon(Icons.tv),
            backgroundColor: Colors.black,
            elevation: 0,
            onPressed: () {
               setState(() {
                isTVorRadio = false;
                tvOrRadio = false;
            });
        },
      ): FloatingActionButton(
            child: Icon(Icons.radio),
            backgroundColor: Colors.black,
            elevation: 0,
            onPressed: () {
               setState(() {
                isTVorRadio = true;
                tvOrRadio = true;
            });
        },
      ),
      // counter i is 9 when we tapped the button 9 times

          ),
        ),
    );
  }
}