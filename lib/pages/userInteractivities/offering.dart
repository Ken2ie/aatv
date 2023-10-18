import 'package:flutter/material.dart';
import 'package:aatvmobilevsn/custom-widgets/userprofile.dart';

class Offering extends StatefulWidget {
  const Offering({super.key});

  @override
  State<Offering> createState() => _OfferingState();
}

class _OfferingState extends State<Offering> {

  bool makingPayment = false;
  bool successfulPayment = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Scaffold(
          appBar: AppBar(
            leading: UserProfile(),
            title: Text('Offerings', 
            style: TextStyle(
              color: Colors.black
            ),
            ),
            actions: [],
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black
            ),
          ),
          body: SingleChildScrollView(
            child: Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Headquaters Church Building',
                         style: TextStyle(
                          fontSize: 15
                         ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          showBottomSheet(
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topLeft:Radius.circular(30), topRight: Radius.circular(30)),
                             ),
                            context: context,
                            builder: (BuildContext context){
                              return Container(
                                height: 300,
                                padding: EdgeInsets.symmetric(horizontal:25, vertical: 10),
                                decoration: BoxDecoration(
                                  // color: Color.fromARGB(255, 255, 255, 255),
                                  // borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Payment',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600
                                        ), 
                                        ),
                                        IconButton(onPressed: (){
                                          Navigator.pop(context);
                                          makingPayment = false;
                                        }, 
                                        icon: Icon(Icons.close),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    Flex(
                                      direction: Axis.vertical,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 56,
                                                child: TextField(
                                                    // controller: reference,
                                                    decoration: InputDecoration(
                                                      border: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(10),
                                                      ),
                                                      hintText: 'Amount'
                                                    ),
                                                  ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 56,
                                                child: TextField(
                                                  // controller: reference,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                    ),
                                                    hintText: 'Reference (eg: Talk to God, etc...)'
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20,),

                                        !makingPayment 
                                        ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              makingPayment = true;
                                            });
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            width: MediaQuery.of(context).size.width,
                                            child: Text('Make Payment', 
                                               style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20
                                               ),
                                            ),
                                          ),
                                        )
                                        : successfulPayment
                                        ? CircularProgressIndicator(
                                          color: Colors.blue[500],
                                        ) : Icon(Icons.check,
                                        color: Colors.green
                                        )
                                      ],
                                      )
                                  ],
                                ),
                              );
                            });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          // margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber,
                          ),
                          child: Text('Building the Church of God', 
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800
                          ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
      
                SizedBox(height: 10,),
                // Personal Offerings
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Personal Offerings',
                         style: TextStyle(
                          fontSize: 15
                         ),
                      ),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: 
                        Flex(
                          direction: Axis.horizontal,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){
                      
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 150,
                                // margin: EdgeInsets.symmetric(horizontal: 20),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: Text('Tithe', 
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800
                                ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            GestureDetector(
                              onTap: (){
                      
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 150,
                                // margin: EdgeInsets.symmetric(horizontal: 20),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: Text('Offering', 
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800
                                ),
                                ),
                              ),
                            ),
                            
                            SizedBox(width: 20,),
      
                            // Talk to God
      
                            GestureDetector(
                              onTap: (){
                      
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 150,
                                // margin: EdgeInsets.symmetric(horizontal: 20),
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: Text('Talk to God', 
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800
                                ),
                                ),
                              ),
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
        ),
      )
    );
  }
}