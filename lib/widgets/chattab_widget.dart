import 'package:flutter/material.dart';

class PetChatDetails extends StatefulWidget {
  const PetChatDetails({super.key});

  @override
  State<PetChatDetails> createState() => _PetChatDetailsState();
}

class _PetChatDetailsState extends State<PetChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 
      
      const Text("chat",style:TextStyle(
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