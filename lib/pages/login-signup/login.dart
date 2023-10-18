import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:aatvmobilevsn/pages/home.dart';
import 'package:aatvmobilevsn/pages/login-signup/register.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                SizedBox(height: 50),
                Center(
                  child: Text('Sign In',
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
                    // SizedBox(height: 25),
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
                    SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    login();
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
                        login();
                      },
                      child: Text('Login', 
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
                    Text('Sign in with'),
                    SizedBox(height: 20),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          doLogin();
                          // print('google login');
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
                      // SizedBox(width: 20,),
                      // GestureDetector(
                      //   onTap: () {
                          
                      //   },
                      //   child: Container(
                      //     width: 50,
                      //     height: 50,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(90),
                      //       border: Border.all(width: 1.4)
                      //       ),
                      //     child:
                      //      Padding(
                      //        padding: const EdgeInsets.all(8.0),
                      //        child: Center(
                      //         child: SvgPicture.asset('assets/svg/apple.svg', 
                      //         fit: BoxFit.cover,
                      //         width: 30,
                      //         height: 30,
                      //         ),
                      //        ),
                      //      ),
                      //   ),
                      // )
                    ],
                  ),]
                ),
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                     builder: (context) => Register(),
                   ));
                },
                 child: Text('Do not have an account? Register Now', 
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


// Login Function
  
  login(){
    print('Going Home');
     Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Home(),
           ));
  }

  var  email;

  GoogleSignIn _googleSignIn = new GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  initLogin() {
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) async {
      if (account != null) {
        // user logged
        login();
      } else {
        // user NOT logged
      }
    });
    _googleSignIn.signInSilently()
    .whenComplete(() => login());
    }

  doLogin() async {
    await _googleSignIn.signIn();
  }

}