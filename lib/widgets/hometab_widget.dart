
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_app/widgets/pet_category.dart';
import 'package:pet_app/widgets/search_widget.dart';


import 'namedicon_widget.dart';
import 'newest_pet.dart';

class PetHomeDetails extends StatefulWidget {
  const PetHomeDetails({super.key});

  @override
  State<PetHomeDetails> createState() => _PetHomeDetailsState();
}

class _PetHomeDetailsState extends State<PetHomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        actions: [
          NamedIcon(
            text: 'Inbox',
            iconData: Icons.notifications_outlined,
            notificationCount: 2,
            onTap: () {},
          ),
          const AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1555894755-b3d9b12236dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Find Your",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 12.h,
              ),
              const Text("Lovely pet in anywhere!",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal)),
              SizedBox(
                height: 26.h,
              ),
              const SearchWidget(),
              const ListTile(
                leading: Text("Pet Cateogory",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                trailing: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ),
              getCategory(),
              const ListTile(
                leading: Text("Newest Pet",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
                trailing: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ),
              getNewestPet(),
            ],
          ),
        ),
      ),
    );
  }
}
