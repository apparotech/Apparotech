import 'package:apparotech/main/main_view.dart';
import 'package:flutter/material.dart';

import '../intro/introduction.dart';
import '../projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      ProjectsView(),
    ]);
  }
}