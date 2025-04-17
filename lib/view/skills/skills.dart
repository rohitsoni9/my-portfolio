import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/getx_controllers/skill_controller.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:get/get.dart';
import '../../res/constants.dart';
import '../../view model/responsive.dart';
import 'components/skill_grid.dart';

class Skills extends StatelessWidget {
  final controller = Get.put(SkillController());
  Skills({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'Skills & ', title: 'Technologies'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: SkillGrid(
                    crossAxisCount: 3,
                    ratio: 1.5,
                  ),
                  extraLargeScreen:
                      SkillGrid(crossAxisCount: 4, ratio: 1.6),
                  largeMobile: SkillGrid(crossAxisCount: 1, ratio: 1.8),
                  mobile: SkillGrid(crossAxisCount: 1, ratio: 1.4),
                  tablet: SkillGrid(
                    ratio: 1.7,
                    crossAxisCount: 2,
                  )))
        ],
      ),
    );
  }
} 