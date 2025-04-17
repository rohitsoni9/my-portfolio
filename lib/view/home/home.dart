import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/about/about.dart';
import 'package:flutter_portfolio/view/contact/contact.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/project_view.dart';
import 'package:flutter_portfolio/view/skills/skills.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      AboutUs(),
      ProjectsView(),
      Skills(),
      Contact(),
    ]);
  }
}
