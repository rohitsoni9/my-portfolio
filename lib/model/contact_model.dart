class ContactModel {
  final String title;
  final String value;
  final String icon;
  final String url;

  ContactModel({
    required this.title,
    required this.value,
    required this.icon,
    required this.url,
  });
}

List<ContactModel> contactList = [
  ContactModel(
    title: 'Email',
    value: 'your.email@example.com',
    icon: 'assets/icons/email.svg',
    url: 'mailto:your.email@example.com',
  ),
  ContactModel(
    title: 'LinkedIn',
    value: 'linkedin.com/in/yourprofile',
    icon: 'assets/icons/linkedin.svg',
    url: 'https://www.linkedin.com/in/yourprofile',
  ),
  ContactModel(
    title: 'GitHub',
    value: 'github.com/yourusername',
    icon: 'assets/icons/github.svg',
    url: 'https://github.com/yourusername',
  ),
  ContactModel(
    title: 'Twitter',
    value: '@yourusername',
    icon: 'assets/icons/twitter.svg',
    url: 'https://twitter.com/yourusername',
  ),
  ContactModel(
    title: 'Location',
    value: 'Your City, Country',
    icon: 'assets/icons/location.svg',
    url: 'https://maps.google.com/?q=Your+City+Country',
  ),
]; 