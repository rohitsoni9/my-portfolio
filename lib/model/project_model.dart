class Project {
  Project(this.name, this.description, this.image, this.link);

  final String description;
  final String image;
  final String link;
  final String name;
}

List<Project> projectList = [
  Project(
    'Matchmde: Match, Date & Meetup',
    'Making authentic connections just got easier!\nImagine not having to spend hours swiping away on dating sites in search of “The One”. Say goodbye to the world of fake accounts and spam messages. With this verified dating app, we arre revolutionizing the dating experience. Our cutting-edge AI technology verifies each member, ensuring that every connection you make is with a real, genuine person.',
    'assets/images/coffee.png',
    'https://play.google.com/store/apps/details?id=com.matchmde',
  ),
  Project(
    'LotusX:Crypto Trading Platform',
    'LotusX caters to both beginners and experienced traders, offering a secure and efficient environment to trade digital assets.',
    'assets/images/car.png',
    'https://play.google.com/store/apps/details?id=com.lotusx.global',
  ),
  Project(
      'Attendance and Payroll App',
      'factoTime is an attendance app also known as a time tracking or attendance app for employees. With this app, you can capture employee attendance with selfies, time, and location.',
      'assets/images/alarm.png',
      'https://play.google.com/store/apps/details?id=com.factotime.attendance.app'),
  Project(
      'FactoHR Employee App',
      'factoHR: Empowering HR, Simplifying Work Take control of your HR operations with factoHR – a next-gen mobile-first HRMS platform. Designed for employees and managers alike, factoHR integrates seamlessly with your organization’s existing systems to deliver efficiency and accuracy like never before.',
      'assets/images/cui.png',
      'https://play.google.com/store/apps/details?id=com.hrplug.ess'),
];
