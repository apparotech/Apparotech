import 'package:apparotech/projects/components/image_viewer.dart';
import 'package:apparotech/projects/components/project_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/project_model.dart';
import '../../res/constanta.dart';
import '../../view model/getx_controllers/projects_controller.dart';
class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());

  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        ImageViewer(context,projectList[index].image);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.only(left: defaultPadding,right: defaultPadding,top: defaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: bgColor),
        duration: const Duration(milliseconds: 500),
              child: ProjectDetail(index: index,),
      ),
    );
  }
}