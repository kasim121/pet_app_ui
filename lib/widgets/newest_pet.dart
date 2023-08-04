  import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/pet_data.dart';

SizedBox getNewestPet() {
    return SizedBox(
              height: 350.h,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: newestPetListDetails.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 195.w,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(
                              color: Color.fromARGB(97, 221, 210, 210),
                              width: 1),
                        ),
                        elevation: 0,
                        //margin: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.network(
                                  newestPetListDetails[index]
                                      .imageName
                                      .toString(),
                                  fit: BoxFit.cover,
                                  height: 180.h,
                                  width: 200.w,
                                ),
                                Positioned(
                                  top: 10,
                                  right: 6,
                                  child: Container(
                                      width: 40.w,
                                      height: 40.h,
                                      alignment:
                                          AlignmentDirectional.topCenter,
                                      child: MaterialButton(
                                        onPressed: () {},
                                        color: index == 0
                                            ? Colors.red
                                            : Colors.white,
                                        padding: const EdgeInsets.all(7),
                                        shape: const CircleBorder(),
                                        child: Center(
                                          child: index == 0
                                              ? const Icon(
                                                  Icons.favorite,
                                                  size: 15,
                                                  color: Colors.white,
                                                )
                                              : const Icon(
                                                  Icons.favorite_border,
                                                  size: 15,
                                                  color: Colors.grey,
                                                ),
                                        ),
                                      )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 90.w,
                                    height: 35.h,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (kDebugMode) {
                                          print(
                                              "buy  button pressed inside deals !");
                                        }
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: index == 0
                                            ? const Color.fromARGB(
                                                255, 220, 117, 97)
                                            : Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              15), // <-- Radius
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                            newestPetListDetails[index]
                                                .adoptionStatus
                                                .toString(),
                                            style: TextStyle(
                                              color: index == 0
                                                  ? const Color(0xFFFEC3C3)
                                                  : Colors.white,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.sp,
                                            )),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                      newestPetListDetails[index]
                                          .petName
                                          .toString(),
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp)),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        size: 20,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                          newestPetListDetails[index]
                                              .cityName
                                              .toString(),
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14.sp)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
  }
