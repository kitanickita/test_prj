import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: 330,
        height: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: ProjectColor.grey,
              blurRadius: 6,
            )
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
              color: ProjectColor.black,
            ),
          ),
        ),
      ),
    );
  }
}
