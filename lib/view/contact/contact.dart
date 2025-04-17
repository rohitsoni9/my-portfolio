import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../model/contact_model.dart';
import '../../res/constants.dart';
import '../../view model/getx_controllers/contact_controller.dart';
import '../../view model/responsive.dart';
import 'components/contact_card.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        desktop: _buildDesktopView(context),
        largeMobile: _buildMobileView(context),
        mobile: _buildMobileView(context),
        tablet: _buildTabletView(context),
      ),
    );
  }

  Widget _buildDesktopView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: defaultPadding,
              runSpacing: defaultPadding,
              children: List.generate(contactList.length, (index) {
                return SizedBox(
                  width: 250,
                  child: Obx(() => AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        margin: const EdgeInsets.symmetric(
                          vertical: defaultPadding / 2,
                          horizontal: defaultPadding / 2,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(colors: [
                            Colors.pinkAccent,
                            Colors.blue,
                          ]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pink,
                              offset: const Offset(-2, 0),
                              blurRadius: controller.hovers[index] ? 20 : 10,
                            ),
                            BoxShadow(
                              color: Colors.blue,
                              offset: const Offset(2, 0),
                              blurRadius: controller.hovers[index] ? 20 : 10,
                            ),
                          ],
                        ),
                        child: ContactCard(
                          index: index,
                          onTap: () =>
                              launchUrl(Uri.parse(contactList[index].url)),
                        ),
                      )),
                );
              }),
            ),
          ),
        ),
        const SizedBox(width: defaultPadding * 2),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: _buildContactForm(),
          ),
        ),
      ],
    );
  }

  Widget _buildContactForm() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      padding: const EdgeInsets.all(defaultPadding * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.2),
            offset: const Offset(-2, 0),
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            offset: const Offset(2, 0),
            blurRadius: 10,
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Me',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: defaultPadding),
            TextField(
              decoration: InputDecoration(
                hintText: 'Your Name',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            TextField(
              decoration: InputDecoration(
                hintText: 'Your Email',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Your Message',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding * 2),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement email sending functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.pinkAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 2,
                  vertical: defaultPadding,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            spacing: defaultPadding,
            runSpacing: defaultPadding,
            children: List.generate(contactList.length, (index) {
              return SizedBox(
                width:
                    (MediaQuery.of(context).size.width - defaultPadding * 4) /
                        2,
                child: Obx(() => AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.symmetric(
                        vertical: defaultPadding / 2,
                        horizontal: defaultPadding / 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(colors: [
                          Colors.pinkAccent,
                          Colors.blue,
                        ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.pink,
                            offset: const Offset(-2, 0),
                            blurRadius: controller.hovers[index] ? 20 : 10,
                          ),
                          BoxShadow(
                            color: Colors.blue,
                            offset: const Offset(2, 0),
                            blurRadius: controller.hovers[index] ? 20 : 10,
                          ),
                        ],
                      ),
                      child: ContactCard(
                        index: index,
                        onTap: () =>
                            launchUrl(Uri.parse(contactList[index].url)),
                      ),
                    )),
              );
            }),
          ),
          const SizedBox(height: defaultPadding * 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: _buildContactForm(),
          ),
        ],
      ),
    );
  }

  Widget _buildTabletView(BuildContext context) {
    return _buildDesktopView(context);
  }
}
