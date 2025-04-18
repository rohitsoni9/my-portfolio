import 'package:get/get.dart';
import 'dart:async';

class TestimonialController extends GetxController {
  final currentIndex = 0.obs;
  final isHovered = false.obs;
  Timer? _timer;

  @override
  void onInit() {
    super.onInit();
    _startAutoSlide();
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (!isHovered.value) {
        nextTestimonial();
      }
    });
  }

  void nextTestimonial() {
    if (currentIndex.value < 2) {
      currentIndex.value++;
    } else {
      currentIndex.value = 0;
    }
  }

  void previousTestimonial() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
    } else {
      currentIndex.value = 2;
    }
  }

  void setHover(bool value) {
    isHovered.value = value;
  }
} 