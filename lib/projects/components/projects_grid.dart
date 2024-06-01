import 'package:apparotech/projects/components/project_info.dart';
import 'package:apparotech/res/constanta.dart';
import 'package:apparotech/view%20model/getx_controllers/projects_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/project_model.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  ProjectGrid({super.key, this.crossAxisCount = 3,  this.ratio=1.3});
  final controller = Get.put(ProjectController());

  @override
  Widget build (BuildContext context) {
    return GridView.builder(
         padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: projectList.length,
         gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: crossAxisCount, childAspectRatio: ratio),
        itemBuilder: (context , index) {
           return Obx( () => AnimatedContainer(
               duration: const Duration(microseconds: 200),
                 margin: const EdgeInsets.symmetric(
                    vertical: defaultPadding, horizontal: defaultPadding
                 ),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30),
               gradient: const LinearGradient(colors: [
                 Colors.pinkAccent,
                 Colors.blue,
               ]),
               boxShadow:
                 [
                   BoxShadow(
                     color: Colors.pink,
                     offset: const Offset(-2, 0),
                     blurRadius: controller.hovers[index] ? 20 : 10,
                   ),
                   BoxShadow(
                     color: Colors.blue,
                     offset: const Offset(2, 0),
                     blurRadius: controller.hovers[index] ? 20 : 10,),
                 ]
             ),
               child: ProjectStack(index: index)
           ));
        });
  }
}