import 'package:flutter/widgets.dart';

import '../../../constant/colors.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    Key key,
    @required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      width: 382,
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ProjectColor.white,
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
    );
  }
}
