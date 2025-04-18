class SkillModel {
  final String name;
  final String category;
  final String level;
  final String description;
  final String icon;

  SkillModel({
    required this.name,
    required this.category,
    required this.level,
    required this.description,
    required this.icon,
  });
}

List<SkillModel> skillList = [
  SkillModel(
    name: 'Flutter',
    category: 'Mobile Development',
    level: 'Expert',
    description: 'Proficient in building cross-platform mobile applications using Flutter framework. Experienced in state management, widget composition, and implementing complex UI designs. Skilled in performance optimization and platform-specific integrations.',
    icon: 'assets/icons/flutter.svg',
  ),
  SkillModel(
    name: 'Dart',
    category: 'Programming',
    level: 'Expert',
    description: 'Strong command of Dart programming language including advanced features like async/await, streams, and isolates. Experienced in writing clean, maintainable, and efficient code following best practices and design patterns.',
    icon: 'assets/icons/dart.svg',
  ),
  SkillModel(
    name: 'Firebase',
    category: 'Backend',
    level: 'Advanced',
    description: 'Comprehensive experience with Firebase services including Authentication, Cloud Firestore, Realtime Database, Cloud Functions, and Cloud Storage. Skilled in implementing real-time features and managing backend infrastructure.',
    icon: 'assets/icons/firebase.svg',
  ),
  SkillModel(
    name: 'REST APIs',
    category: 'Backend',
    level: 'Advanced',
    description: 'Experienced in designing, implementing, and consuming RESTful APIs. Proficient in handling API authentication, error handling, and data serialization. Skilled in implementing efficient API caching and optimization strategies.',
    icon: 'assets/icons/api.svg',
  ),
  SkillModel(
    name: 'Git',
    category: 'Version Control',
    level: 'Advanced',
    description: 'Proficient in Git version control system. Experienced in branching strategies, code reviews, and collaborative development workflows. Skilled in resolving merge conflicts and maintaining clean commit history.',
    icon: 'assets/icons/git.svg',
  ),
  SkillModel(
    name: 'Clean Architecture',
    category: 'Architecture',
    level: 'Advanced',
    description: 'Expertise in implementing Clean Architecture principles in Flutter applications. Skilled in separation of concerns, dependency injection, and creating maintainable, testable, and scalable codebases.',
    icon: 'assets/icons/architecture.svg',
  ),
  SkillModel(
    name: 'Node.js',
    category: 'Backend',
    level: 'Intermediate',
    description: 'Experience in building server-side applications using Node.js. Proficient in Express.js framework, handling HTTP requests, and implementing RESTful APIs. Knowledgeable in asynchronous programming and event-driven architecture.',
    icon: 'assets/icons/node.png',
  ),
  SkillModel(
    name: 'Angular',
    category: 'Frontend',
    level: 'Intermediate',
    description: 'Experience in building responsive web applications using Angular framework. Skilled in component-based architecture, reactive forms, and implementing complex UI features. Knowledgeable in TypeScript and Angular best practices.',
    icon: 'assets/icons/angular.png',
  ),
  SkillModel(
    name: 'UI/UX Design',
    category: 'Design',
    level: 'Advanced',
    description: 'Strong understanding of UI/UX principles and best practices. Experienced in creating intuitive user interfaces, implementing responsive designs, and ensuring optimal user experience across different devices and screen sizes.',
    icon: 'assets/icons/behance.svg',
  ),
  SkillModel(
    name: 'State Management',
    category: 'Architecture',
    level: 'Advanced',
    description: 'Expertise in implementing state management solutions using GetX and BLoC patterns. Skilled in managing complex application states, handling side effects, and implementing reactive programming patterns.',
    icon: 'assets/icons/bloc.png',
  ),
  SkillModel(
    name: 'Responsive Design',
    category: 'Development',
    level: 'Advanced',
    description: 'Proficient in creating responsive layouts that adapt to different screen sizes and orientations. Experienced in implementing adaptive designs, handling platform-specific UI requirements, and ensuring consistent user experience.',
    icon: 'assets/icons/check.svg',
  ),
  SkillModel(
    name: 'Testing',
    category: 'Quality Assurance',
    level: 'Intermediate',
    description: 'Experience in implementing unit tests, widget tests, and integration tests in Flutter applications. Knowledgeable in test-driven development (TDD) practices and ensuring code quality through comprehensive testing.',
    icon: 'assets/icons/check.svg',
  ),
]; 