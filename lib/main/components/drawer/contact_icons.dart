import 'package:apparotech/res/constanta.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://www.linkedin.com/in/app-arotech-517745305?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'));}, icon: SvgPicture.asset('assets/images/iconlinkedin.svg')),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://github.com/apparotech'));}, icon: SvgPicture.asset('assets/images/icongithub.svg')),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://www.facebook.com/profile.php?id=61559650213211'));}, icon: SvgPicture.asset('assets/images/facebook.svg')),
          IconButton(onPressed: () {launchUrl(Uri.parse('https://x.com/apparotech'));}, icon: SvgPicture.asset('assets/images/twitter.svg')),
          //IconButton(onPressed: () {launchUrl(Uri.parse('https://www.instagram.com/apparotech/?hl=en'));}, icon: SvgPicture.asset('assets/images/instagram.svg')),

          const Spacer(),
        ],
      ),
    );
  }
}