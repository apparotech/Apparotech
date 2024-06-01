
import 'package:apparotech/main/components/drawer/drawer.dart';
import 'package:apparotech/main/topnavigationbar.dart';
import 'package:apparotech/res/constanta.dart';
import 'package:apparotech/view%20model/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../components/navigation_button_list.dart';
import '../view model/controller.dart';
class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context) ? const SizedBox(height:defaultPadding*2,) : const SizedBox(height:defaultPadding/2,),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            if(Responsive.isLargeMobile(context))  const Row(children: [Spacer(),NavigationButtonList(),Spacer()],),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [
                  ...pages
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



