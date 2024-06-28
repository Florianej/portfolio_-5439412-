import 'package:flutter/material.dart';

class FahigkeitPage extends StatelessWidget {
  const FahigkeitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(
          child: Text(
            'Fähigkeiten',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        buildSkillsSection(
          context,
          title: 'Languages',
          skills: [
            buildSkillIcon('assets/images/Screenshot 2024-06-13 062300.png', 'Eclipse'),
            buildSkillIcon('assets/images/Screenshot 2024-06-13 062404.png', 'Flutter'),
            buildSkillIcon('assets/images/Screenshot 2024-06-13 062508.png', 'SQL'),
            buildSkillIcon('assets/Screenshot 2024-06-13 062338.png', 'Java'),
          ],
        ),
      ],
    );
  }

  Widget buildSkillsSection(BuildContext context, {required String title, required List<Widget> skills}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: skills.map((skill) => Expanded(child: skill)).toList(),
        ),
      ],
    );
  }

  Widget buildSkillIcon(String imagePath, String label) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 64,
            height: 64,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}