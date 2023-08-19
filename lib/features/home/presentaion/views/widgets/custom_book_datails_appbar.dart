import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoustomBookDatailsAppBar extends StatelessWidget {
  const CoustomBookDatailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.close),
        ),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.KHomeView);
          },
          icon: const Icon(Icons.home_work_outlined),
        ),
      ],
    );
  }
}
