import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gods_eye/utils/constants.dart';

class Childcard extends StatelessWidget {
  const Childcard({
    @required this.name,
    @required this.level,
    @required this.imgSrc,
  });

  final String name;
  final String level;
  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    TextTheme textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        // Implement when child card is clicked
      },
      child: Container(
        width: screenWidth * 0.3,
        child: Column(
          children: <Widget>[
            CircularProfileAvatar(
              "",
              radius: screenWidth * 0.1,
              borderWidth: screenWidth * 0.005,
              borderColor: kPrimaryColor,
              elevation: 5.0,
              foregroundColor: Colors.blue.withOpacity(0.5),
              child: Image.asset(
                imgSrc,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.008),
              child: Text(name, style: textTheme.subtitle2),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.006),
              child: Text(
                level,
                style: textTheme.caption.copyWith(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
