import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72.h,
      child: TextField(
        maxLines: 1,
        style: const TextStyle(fontSize: 17),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            filled: true,
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Icon(Icons.search, color: Colors.black),
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            fillColor:
                Theme.of(context).inputDecorationTheme.fillColor,
            contentPadding: EdgeInsets.zero,
            hintText: 'Search',
            hintStyle: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.grey,
                fontSize: 14)),
      ),
    );
  }
}
