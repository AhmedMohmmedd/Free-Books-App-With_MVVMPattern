import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class customErrWidght extends StatelessWidget {
  const customErrWidght({super.key, required this.errMasseg});
  final String errMasseg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMasseg,
        style: Styles.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
