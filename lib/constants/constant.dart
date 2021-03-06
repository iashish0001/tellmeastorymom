import 'package:flutter/material.dart';

const primaryColour = Color(0xFF9224BF);
const physicsForApp = BouncingScrollPhysics();

Widget appBarOverall({String heading, bool searchThere = true}) {
  return AppBar(
    backgroundColor: primaryColour,
    title: Text(
      heading,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(20.0),
        bottomLeft: Radius.circular(20.0),
      ),
    ),
    actions: searchThere
        ? [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ]
        : [],
  );
}

Widget circularProgressIndicator() {
  return Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(primaryColour),
    ),
  );
}

const defaultWidth = 411.42857142857144;
const defaultHeight = 774.8571428571429;
const defaultSize = Size(defaultWidth, defaultHeight);
