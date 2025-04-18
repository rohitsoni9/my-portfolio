class TestimonialModel {
  final String name;
  final String role;
  final String company;
  final String image;
  final String testimonial;
  final double rating;

  TestimonialModel({
    required this.name,
    required this.role,
    required this.company,
    required this.image,
    required this.testimonial,
    required this.rating,
  });
}

List<TestimonialModel> testimonialList = [
  TestimonialModel(
    name: 'Gustavo Martine',
    role: 'CEO & Founder',
    company: 'WebBuildMe',
    image: 'assets/images/gustavo.jpg',
    testimonial: 'Working with Rohit was an absolute pleasure. His attention to detail and problem-solving skills are exceptional. He delivered our project ahead of schedule and exceeded our expectations.',
    rating: 5,
  ),
  TestimonialModel(
    name: 'Fabian Foo',
    role: 'Chief Executive Officer',
    company: 'MatchMde',
    image: 'assets/images/fabian_foo.png',
    testimonial: 'Rohit\'s technical expertise and ability to understand complex requirements made him an invaluable asset to our team. His Flutter development skills are top-notch.',
    rating: 5,
  ),
  TestimonialModel(
    name: 'Mayur Khakhkhar',
    role: 'Professor',
    company: 'University',
    image: 'assets/images/testimonial3.jpg',
    testimonial: 'Rohit was an exceptional persion in my advanced programming course. His analytical thinking and problem-solving abilities set him apart. He consistently demonstrated deep understanding of complex concepts and showed great potential for research.',
    rating: 5,
  ),
]; 