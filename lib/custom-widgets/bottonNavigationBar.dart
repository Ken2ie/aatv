import 'package:aatvmobilevsn/components/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:aatvmobilevsn/pages/userInteractivities/globe.dart';
import 'package:aatvmobilevsn/pages/userInteractivities/offering.dart';
import 'package:aatvmobilevsn/pages/userInteractivities/settings.dart';
import 'package:aatvmobilevsn/pages/userInteractivities/userhome.dart';



class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _pages = [HomeUser(), Globe(),  Offering(), Settings()];
  

  // PageView Controller
  final _controller = PageController(
  initialPage: 0,
);

@override
void dispose() {
  _controller.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _pages,
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: GNav(
          gap: 10,
          selectedIndex: _currentIndex,
          tabBackgroundColor: Color.fromARGB(255, 255, 243, 185),
          padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          tabs: [
            GButton(
              icon: Icons.home, 
              text: 'Home',
              iconActiveColor: Colors.black,
              ),
            GButton(
              text: 'Where',
              icon: Icons.route,
              leading: SvgPicture.asset('assets/svg/where.svg', width: 20),
            ),
            GButton(
              text: 'Offertory',
              icon: Icons.money
            ),
            GButton(
              text: 'Kenzie',
              icon: Icons.person,
              leading: Container(
              width: 25,
              height: 25,
              // padding: EdgeInsets.symmetric(top: 10),
              margin: EdgeInsets.symmetric(vertical: 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/png/user.jpg',
                // width: 30,
                fit: BoxFit.cover,
                ),
              ),
            )
            )
          ],
      
          // Changing Screens
          onTabChange: (index) {
                  setState(() {
                    _currentIndex = index;
                    // print(index);
                  });
                  _controller.jumpToPage(index);
                },
        ),
      ),
    );
  }

  // FFF8D4
}

        