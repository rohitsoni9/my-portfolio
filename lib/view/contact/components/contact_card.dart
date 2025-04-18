import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../model/contact_model.dart';
import '../../../res/constants.dart';
import '../../../view model/getx_controllers/contact_controller.dart';

class ContactCard extends StatelessWidget {
  final int index;
  final VoidCallback onTap;
  final controller = Get.put(ContactController());
  
  ContactCard({
    super.key,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
        ),
        duration: const Duration(milliseconds: 500),
        child: Center(
          child: SvgPicture.asset(
            contactList[index].icon,
            height: 40,
            width: 40,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
} 