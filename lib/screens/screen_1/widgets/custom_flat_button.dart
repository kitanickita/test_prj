import 'package:flutter/widgets.dart';

import '../../../constant/colors.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    Key key,
    this.text = 'TEST BUTTON',
    @required this.onTap,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 140,
        decoration: BoxDecoration(
          color: ProjectColor.fuchia,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              letterSpacing: 1.2,
              fontSize: 14,
              color: ProjectColor.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
