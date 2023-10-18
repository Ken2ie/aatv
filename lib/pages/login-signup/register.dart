import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aatvmobilevsn/pages/login-signup/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    
    /* Find out whether a user is logged in. */

    /* If there is already a user logged in, no routing. */

    /* Else route back to Login Page. */
    // runApp(Login());

    FlutterNativeSplash.remove();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
        FocusNode().unfocus();
        },
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text('Register',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800
                  ),
                  ),
                ),
                // SizedBox(height: 50),
                Column(
                  children: [
                    // Email
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: 
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                          hintText: 'Email',
                          hintStyle: TextStyle(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          )
                        ),
                      ),
                    ),

                    // Breaks
                    SizedBox(height: 25),

                    // Password
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: 
                      TextFormField(
                        obscureText: true,
                        enableSuggestions: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                          hintText: 'Password',
                          hintStyle: TextStyle(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          )
                        ),
                      ),
                    ),

                    // Breaks
                    SizedBox(height: 25),

                    // Confirm Password
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: 
                      TextFormField(
                        obscureText: true,
                        enableSuggestions: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextButton(
                      onPressed: () {
                        
                      },
                      child: Text('Submit', 
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3.3,
                      height: 1,
                      color:Color.fromARGB(255, 159, 159, 159),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'or',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 159, 159, 159)
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.3,
                      height: 1,
                      color: Color.fromARGB(255, 159, 159, 159),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Register with'),
                    SizedBox(height: 20),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(width: 1.4)
                            ),
                          child:
                           Padding(
                             padding: const EdgeInsets.all(11.0),
                             child: Center(
                              child: Image.asset('assets/png/google.png', 
                              fit: BoxFit.cover,
                              ),
                             ),
                           ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(width: 1.4)
                            ),
                          child:
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Center(
                              child: SvgPicture.asset('assets/svg/apple.svg', 
                              fit: BoxFit.cover,
                              width: 30,
                              height: 30,
                              ),
                             ),
                           ),
                        ),
                      )
                    ],
                  ),]
                ),

                // Register Navigation Button
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                     builder: (context) => Login(),
                   ));
                },
                 child: Text('Already have and account? Sign in', 
                   style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline
                   ),
                 )
                 )
              ],
            ),
          )
        ),
      ),
    );
  }
}