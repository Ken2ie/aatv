import 'package:aatvmobilevsn/pages/login-signup/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aatvmobilevsn/custom-widgets/userprofile.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool inactive = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 241, 241, 241),
          appBar: AppBar(
            // leading: UserProfile(),
            title: Text('Settings',
            style: TextStyle(
              color: Colors.black
            ),
            ),
            // actions: [
            //   Text
            // ],
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: 
          Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.vertical,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: 
                          Image.asset('assets/png/user.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          )
                          ),
                      ),
                      SizedBox(height: 15,),
                      Text('Pandit McKenzie', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                      SizedBox(height: 5,),
                      Text('panditmckenzie@gmail.com'),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 180,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromARGB(255, 19, 111, 249),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Edit Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                              ),
                              ),
                              SizedBox(width: 10,),
                              Icon(Icons.chevron_right,
                              color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 30, left:28, bottom: 15),
                        child: Text('Prefrences', style: TextStyle(color: Colors.grey),),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Row(
                              children: [
                                 Icon(Icons.language),
                                 SizedBox(width: 10,),
                              Text('Languages',  style: TextStyle(
                                fontSize: 17
                              ),)
                              ],
                             ),
                             Row(
                              children: [
                                Text('English', 
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 56, 56, 56)
                                ),),
                                Icon(Icons.chevron_right)
                              ],
                             )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             Row(
                              children: [
                                 Icon(Icons.language),
                                 SizedBox(width: 10,),
                              Text('Languages',  style: TextStyle(
                                fontSize: 17
                              ),)
                              ],
                             ),
                             Switch.adaptive(value: inactive, 
                             onChanged:  (bool active) {
                                   setState(() {
                                   inactive = active;
                                 });
                               },
                             )
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(height: 30,),
                    ],
                  ),
                ),
              ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 90, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white
                        ),
                        child: GestureDetector(
                          onTap: (){
                             Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => Login(),
                           ));
                          },
                          child: Container(
                            width: 200,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Color.fromARGB(255, 231, 102, 102)),
                              borderRadius: BorderRadius.circular(40)
                            ),
                            child: 
                                Text('Logout',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.red
                                ),
                                ),
                          ),
                        ),
                      )
            ],
          ),
        ),
      )
      );
  }
}