import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NamedIcon extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback? onTap;
  final int notificationCount;

  const NamedIcon({
    Key? key,
    this.onTap,
    required this.text,
    required this.iconData,
    this.notificationCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 72.w,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(iconData,size: 30,color: Colors.grey,),
              
              ],
            ),
            Positioned(
              top: 12,
              right: 2,
              child: Container(
                height: 25.h,
                width: 25.w,
                padding: const EdgeInsets.only(bottom: 3),
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color.fromARGB(255, 224, 142, 136)),
                alignment: Alignment.center,
                child: Text('$notificationCount',style: TextStyle(fontFamily: 'Poppins',fontSize: 14.sp,fontWeight: FontWeight.bold),),
              ),
            )
          ],
        ),
      ),
    );
  }
}