import 'package:flutter/material.dart';

class PetLikesDetails extends StatefulWidget {
  const PetLikesDetails({super.key});

  @override
  State<PetLikesDetails> createState() => _PetLikesDetailsState();
}

class _PetLikesDetailsState extends State<PetLikesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:       const Text("Likes",style:TextStyle(
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
