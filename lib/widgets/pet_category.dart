  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../data/pet_data.dart';

SizedBox getCategory() {
    return SizedBox(
              height: 180.h,
              child: GridView.builder(
                  itemCount: petList.length,
                  shrinkWrap: true,
                  gridDelegate:
                      const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 3 / 1.0,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5),
                  itemBuilder: (_, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(97, 221, 210, 210)),
                        color: Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10.0)),
                        // shadow color and radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 9.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  const Color.fromARGB(255, 246, 246, 193),
                              radius: 20,
                              child: SvgPicture.asset(
                                petList[index].imageData.toString(),
                              ),
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(petList[index].petName.toString(),
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
                                Text(
                                    "Total of ${petList[index].totalPetNumbers.toString()}",
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            );
  }
