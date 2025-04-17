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
    description: 'Cross-platform mobile app development using Flutter framework',
    icon: 'assets/icons/flutter.svg',
  ),
  SkillModel(
    name: 'Dart',
    category: 'Programming',
    level: 'Expert',
    description: 'Object-oriented programming language for Flutter development',
    icon: 'assets/icons/dart.svg',
  ),
  SkillModel(
    name: 'Firebase',
    category: 'Backend',
    level: 'Advanced',
    description: 'Cloud services, authentication, and real-time database',
    icon: 'assets/icons/firebase.svg',
  ),
  SkillModel(
    name: 'REST APIs',
    category: 'Backend',
    level: 'Advanced',
    description: 'Designing and consuming RESTful web services',
    icon: 'assets/icons/api.svg',
  ),
  SkillModel(
    name: 'Git',
    category: 'Version Control',
    level: 'Advanced',
    description: 'Version control and collaborative development',
    icon: 'assets/icons/git.svg',
  ),
  SkillModel(
    name: 'Clean Architecture',
    category: 'Architecture',
    level: 'Advanced',
    description: 'Implementing clean architecture patterns in Flutter',
    icon: 'assets/icons/architecture.svg',
  ),
]; 