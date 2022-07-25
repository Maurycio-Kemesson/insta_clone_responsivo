import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone_responsivo/pages/home/widgets/icons/icons_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              16,
              14,
              14,
              14,
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage('assets/img/perfil.png'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Expanded(
                  child: Text(
                    'mauryciokemesson',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: SvgPicture.string(
                    IntagramCloneIcons.options,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/img/post.png'),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
            child: Row(
              children: [
                IconButton(
                  icon: SvgPicture.string(
                    IntagramCloneIcons.activity,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.string(
                    IntagramCloneIcons.message,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.string(
                    IntagramCloneIcons.share,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: SvgPicture.string(
                    IntagramCloneIcons.savePost,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '1,846 gostos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                RichText(
                  text: const TextSpan(
                    text: 'mauryciokemesson ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Frase do dia! 👀.',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  'Ver todos os 55 comentários...',
                  style: TextStyle(color: Colors.white70),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'HÁ 1 HORA',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          if (desktop) ...[
            const Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                IconButton(
                  icon: SvgPicture.string(
                    IntagramCloneIcons.emoji,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: 'Adiciona um comentário...',
                        hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Publicar',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ]
        ],
      ),
    );
  }
}
