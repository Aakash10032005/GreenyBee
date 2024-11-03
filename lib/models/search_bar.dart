import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

Container searchBar() {
  return Container(
    height: 55,
    margin: const EdgeInsets.symmetric(horizontal: 15),
    padding: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
        color: Colors.green[50], borderRadius: BorderRadius.circular(15)),
    child: Row(
      children: [
        Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColors,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 25)),
            )),
        Material(
          color: primaryColors,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              child: const Icon(
                Icons.insert_emoticon_sharp,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    ),
  );
}