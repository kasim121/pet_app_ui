import 'package:flutter/material.dart';

class PetProfileDetails extends StatefulWidget {
  const PetProfileDetails({super.key});

  @override
  State<PetProfileDetails> createState() => _PetProfileDetailsState();
}

class _PetProfileDetailsState extends State<PetProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title  :    const Text("Profile",style:TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 14,

                      letterSpacing: 2,
                      fontWeight: FontWeight.bold)
                      
                      ),
                      centerTitle: true,
      ),
    );
  }
}
