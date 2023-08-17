import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class customLodingIndicator extends StatelessWidget {
  const customLodingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child:  CircularProgressIndicator());;
  }
}