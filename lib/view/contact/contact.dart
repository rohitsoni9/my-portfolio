import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../model/contact_model.dart';
import '../../model/testimonial_model.dart';
import '../../res/constants.dart';
import '../../view model/getx_controllers/contact_controller.dart';
import '../../view model/getx_controllers/testimonial_controller.dart';
import '../../view model/responsive.dart';
import 'components/contact_card.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final contactController = Get.put(ContactController());
  final testimonialController = Get.put(TestimonialController());

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
    return Column(
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: _buildTestimonialSlider(),
              ),
              const SizedBox(width: defaultPadding * 2),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: _buildContactForm(),
                ),
              ),
            ],
          ),
        ),
        _buildContactIcons(),
      ],
    );
  }

  Widget _buildContactIcons() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: defaultPadding,
        runSpacing: defaultPadding,
        children: List.generate(contactList.length, (index) {
          return SizedBox(
            width: 80,
            height: 80,
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
                        blurRadius: contactController.hovers[index] ? 20 : 10,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        offset: const Offset(2, 0),
                        blurRadius: contactController.hovers[index] ? 20 : 10,
                      ),
                    ],
                  ),
                  child: ContactCard(
                    index: index,
                    onTap: () => launchUrl(Uri.parse(contactList[index].url)),
                  ),
                )),
          );
        }),
      ),
    );
  }

  Widget _buildTestimonialSlider() {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 2),
      child: Obx(() {
        final testimonial = testimonialList[testimonialController.currentIndex.value];
        return MouseRegion(
          onEnter: (_) => testimonialController.setHover(true),
          onExit: (_) => testimonialController.setHover(false),
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                padding: const EdgeInsets.all(defaultPadding * 2),
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.pinkAccent, Colors.blue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.3),
                      offset: const Offset(-2, 0),
                      blurRadius: testimonialController.isHovered.value ? 20 : 10,
                    ),
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      offset: const Offset(2, 0),
                      blurRadius: testimonialController.isHovered.value ? 20 : 10,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(testimonial.image),
                    ),
                    const SizedBox(height: defaultPadding),
                    Text(
                      testimonial.testimonial,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          testimonial.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Text(
                          '${testimonial.role} at ${testimonial.company}',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: index < testimonial.rating.floor()
                              ? Colors.yellow
                              : Colors.white30,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: IconButton(
                  onPressed: testimonialController.previousTestimonial,
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: testimonialController.nextTestimonial,
                  icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildContactForm() {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400, minHeight: 400),
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
          _buildTestimonialSlider(),
          const SizedBox(height: defaultPadding * 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: _buildContactForm(),
          ),
          const SizedBox(height: defaultPadding * 2),
          _buildContactIcons(),
        ],
      ),
    );
  }

  Widget _buildTabletView(BuildContext context) {
    return _buildDesktopView(context);
  }
}
