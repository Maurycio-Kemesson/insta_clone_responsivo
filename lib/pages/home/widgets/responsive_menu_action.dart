import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone_responsivo/pages/home/widgets/icons/icons_svg.dart';

class ResponsiveMenuAction extends StatelessWidget {
  const ResponsiveMenuAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.string(
          IntagramCloneIcons.home,
          color: Colors.white,
        ),
        const SizedBox(
          width: 12,
        ),
        SvgPicture.string(
          IntagramCloneIcons.message,
          color: Colors.white,
        ),
        const SizedBox(
          width: 12,
        ),
        SvgPicture.string(
          IntagramCloneIcons.newPublish,
          color: Colors.white,
        ),
        const SizedBox(
          width: 12,
        ),
        SvgPicture.string(
          IntagramCloneIcons.explore,
          color: Colors.white,
        ),
        const SizedBox(
          width: 12,
        ),
        SvgPicture.string(
          IntagramCloneIcons.activity,
          color: Colors.white,
        ),
        const SizedBox(
          width: 16,
        ),
        const CircleAvatar(
          radius: 16,
          backgroundImage: AssetImage('assets/img/perfil.png'),
        )
      ],
    );
  }
}
