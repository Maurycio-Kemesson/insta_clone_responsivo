import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:insta_clone_responsivo/pages/home/widgets/story_circle.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;
    return Container(
      height: 110,
      margin: EdgeInsets.only(top: mobile ? 15 : 30),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
        }),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (_, __) => const SizedBox(
            width: 16,
          ),
          itemCount: 16,
          itemBuilder: (_, i) => const StoryCircle(),
        ),
      ),
    );
  }
}
