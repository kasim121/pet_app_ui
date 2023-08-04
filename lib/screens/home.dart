import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/chattab_widget.dart';
import '../widgets/hometab_widget.dart';
import '../widgets/likestab_widget.dart';
import '../widgets/profiletab_widget.dart';

class PetHome extends StatefulWidget {
  const PetHome({super.key});

  @override
  State<PetHome> createState() => _PetHomeState();
}

class _PetHomeState extends State<PetHome> {
   int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    PetHomeDetails(),
    PetChatDetails(),
    PetLikesDetails(),
    PetProfileDetails(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
        bottomNavigationBar: Container(
          color: Colors.transparent,
          child:  Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8),
            child: GNav(
                backgroundColor: Colors.transparent,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.lightBlue,
                padding: const EdgeInsets.all(6),
                
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    gap: 8,
                    iconColor: Colors.grey,
                    text: 'Home',
                    textStyle: TextStyle(fontFamily: 'Poppins',color: Colors.white,fontSize: 14),
                  ),
                  GButton(
                    icon: Icons.mode_comment_outlined,
                    iconColor: Colors.grey,
                    text: 'Chat',
                    
                       textStyle: TextStyle(fontFamily: 'Poppins',color: Colors.white,fontSize: 14),
                  ),
                  GButton(
                    icon: Icons.favorite_border,
                    iconColor: Colors.grey,
                    text: 'Likes',
                       textStyle: TextStyle(fontFamily: 'Poppins',color: Colors.white,fontSize: 14),
                  ),
                  GButton(
                    icon: Icons.person_2_outlined,
                    iconColor: Colors.grey,
                    text: 'Profile',
                       textStyle: TextStyle(fontFamily: 'Poppins',color: Colors.white,fontSize: 14),
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index){
setState(() {
  _selectedIndex = index;
});
                },

                ),
          ),
        ),
        body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
        );
  }
}
