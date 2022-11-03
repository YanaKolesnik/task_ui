import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingInButton extends StatelessWidget {
  SingInButton(this.scr, this.name, this.func, {Key? key}) : super(key: key);

  String scr;
  String name;
  Function() func;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
      height: 48,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: Color.fromRGBO(94, 94, 94, 1))),
      onPressed: func,
      child: Row(
        children: [
          SvgPicture.asset(
              scr,
            ),
          Expanded(
            child: Text(
              name,
              textAlign: TextAlign.center,
              textScaleFactor: 1,
              style: const TextStyle(
                color: Color.fromRGBO(44, 44, 44, 1),
                fontWeight: FontWeight.w500,
                fontSize: 14,
                fontFamily: 'SuisseIntl-Medium',
                height: 1.33,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
