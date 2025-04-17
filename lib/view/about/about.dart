import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class AboutUs extends StatelessWidget {
  AboutUs({super.key});
  final hoverController = Get.put(HoverController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      color: bgColor,
      child: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: defaultPadding * 2),
                Text(
                  "About Me",
                  style: GoogleFonts.roboto(
                    fontSize: Responsive.isLargeMobile(context) ? 36 : 45,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(height: defaultPadding * 2),
                Responsive(
                  desktop: _buildContent(context, isDesktop: true),
                  largeMobile: _buildContent(context, isDesktop: false),
                  mobile: _buildContent(context, isDesktop: false),
                  tablet: _buildContent(context, isDesktop: true),
                ),
                const SizedBox(height: defaultPadding * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, {required bool isDesktop}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isDesktop)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    _buildDescription(),
                    const SizedBox(height: defaultPadding * 2),
                    _buildSkills(),
                  ],
                ),
              ),
              const SizedBox(width: defaultPadding * 2),
              Expanded(
                child: _buildPersonalInfo(),
              ),
            ],
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDescription(),
              const SizedBox(height: defaultPadding * 2),
              _buildPersonalInfo(),
              const SizedBox(height: defaultPadding * 2),
              _buildSkills(),
            ],
          ),
      ],
    );
  }

  Widget _buildDescription() {
    return Obx(() => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(vertical: defaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.pink,
                offset: const Offset(-2, 0),
                blurRadius:
                    hoverController.isHovered['description'] ?? false ? 20 : 10,
              ),
              BoxShadow(
                color: Colors.blue,
                offset: const Offset(2, 0),
                blurRadius:
                    hoverController.isHovered['description'] ?? false ? 20 : 10,
              ),
            ],
          ),
          child: MouseRegion(
            onEnter: (_) => hoverController.setHover('description', true),
            onExit: (_) => hoverController.setHover('description', false),
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Who am I?",
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Text(
                    "I am a passionate software developer with expertise in creating beautiful and functional applications. "
                    "With a strong foundation in modern technologies and a keen eye for design, "
                    "I strive to build solutions that make a difference.\n\n"
                    "My journey in software development has equipped me with skills in various technologies "
                    "including Flutter, React, Node.js, and more. I believe in writing clean, maintainable code "
                    "and creating user experiences that delight.",
                    style: GoogleFonts.roboto(
                      height: 1.5,
                      color: bodyTextColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildPersonalInfo() {
    return Obx(() => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(vertical: defaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.pink,
                offset: const Offset(-2, 0),
                blurRadius: hoverController.isHovered['personalInfo'] ?? false
                    ? 20
                    : 10,
              ),
              BoxShadow(
                color: Colors.blue,
                offset: const Offset(2, 0),
                blurRadius: hoverController.isHovered['personalInfo'] ?? false
                    ? 20
                    : 10,
              ),
            ],
          ),
          child: MouseRegion(
            onEnter: (_) => hoverController.setHover('personalInfo', true),
            onExit: (_) => hoverController.setHover('personalInfo', false),
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal Information",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  _buildInfoItem("Name", "Rohit Soni"),
                  _buildInfoItem("Email", "me@therohitsoni.in"),
                  _buildInfoItem("Location", "Gujarat, India"),
                  _buildInfoItem("Experience", "7+ Years"),
                  _buildInfoItem("Availability", "Open to Opportunities"),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildSkills() {
    return Obx(() => AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(vertical: defaultPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.pink,
                offset: const Offset(-2, 0),
                blurRadius:
                    hoverController.isHovered['skills'] ?? false ? 20 : 10,
              ),
              BoxShadow(
                color: Colors.blue,
                offset: const Offset(2, 0),
                blurRadius:
                    hoverController.isHovered['skills'] ?? false ? 20 : 10,
              ),
            ],
          ),
          child: MouseRegion(
            onEnter: (_) => hoverController.setHover('skills', true),
            onExit: (_) => hoverController.setHover('skills', false),
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Skills & Expertise",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.start,
                    children: [
                      _buildSkillChip("Flutter"),
                      _buildSkillChip("Dart"),
                      _buildSkillChip("React"),
                      _buildSkillChip("Node.js"),
                      _buildSkillChip("JavaScript"),
                      _buildSkillChip("TypeScript"),
                      _buildSkillChip("Firebase"),
                      _buildSkillChip("Git"),
                      _buildSkillChip("UI/UX Design"),
                      _buildSkillChip("REST APIs"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildInfoItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Text(
            "$label: ",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              color: primaryColor,
            ),
          ),
          Text(
            value,
            style: GoogleFonts.roboto(
              color: bodyTextColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillChip(String skill) {
    return Chip(
      label: Text(
        skill,
        style: GoogleFonts.roboto(
          color: primaryColor,
          fontSize: 14,
        ),
      ),
      backgroundColor: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      side:
          const BorderSide(color: Color.fromARGB(57, 255, 105, 180), width: 1),
    );
  }
}

class HoverController extends GetxController {
  final isHovered = <String, bool>{
    'description': false,
    'personalInfo': false,
    'skills': false,
  }.obs;

  void setHover(String key, bool value) {
    isHovered[key] = value;
  }
}
