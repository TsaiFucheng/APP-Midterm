import 'package:flutter/material.dart';
import 'package:auto11410131/generated/l10n/app_localizations.dart';

class LearningJourneyScreen extends StatelessWidget {
  const LearningJourneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildEducationCard(localizations),
          const SizedBox(height: 20),
          _buildSkillsCard(localizations),
          const SizedBox(height: 20),
          _buildProjectCard(localizations),
          const SizedBox(height: 20),
          _buildAwardsCard(localizations),
        ],
      ),
    );
  }

  Widget _buildEducationCard(AppLocalizations localizations) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localizations.educationTitle,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildTimelineTile(localizations.educationSchool1, localizations.educationMajor1, true),
            _buildTimelineTile(localizations.educationSchool2, localizations.educationMajor2, false),
            _buildTimelineTile(localizations.educationSchool3, '', false),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineTile(String title, String subtitle, bool isFirst) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Column(
            children: [
              if (!isFirst)
                Container(
                  width: 2,
                  height: 12,
                  color: Colors.grey,
                ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: isFirst ? Colors.blueAccent : Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.school, color: Colors.white, size: 16),
              ),
              Expanded(
                child: Container(
                  width: 2,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  if (subtitle.isNotEmpty)
                    Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.black54)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillsCard(AppLocalizations localizations) {
    final skills = {
      localizations.skillsCategoryLang: ['Java', 'Python', 'Dart'],
      localizations.skillsCategoryBackend: ['Node.js'],
      localizations.skillsCategoryDB: ['MySQL'],
      localizations.skillsCategoryTools: ['Git', 'VS Code'],
    };

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localizations.skillsTitle,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...skills.entries.map((entry) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(entry.key, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: entry.value.map((skill) => Chip(label: Text(skill))).toList(),
                  ),
                  const SizedBox(height: 16),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard(AppLocalizations localizations) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.code, size: 30),
              title: Text(localizations.projectTitle, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            Text(
              localizations.projectName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Text(
              localizations.projectDescription,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
            const SizedBox(height: 12),
            Text(
              localizations.projectTechLabel,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              children: [
                Chip(label: const Text('PyTorch'), backgroundColor: Colors.orange.shade100),
                Chip(label: const Text('BERT'), backgroundColor: Colors.blue.shade100),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAwardsCard(AppLocalizations localizations) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(Icons.emoji_events, size: 30, color: Colors.amber),
          title: Text(localizations.awardsTitle, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(localizations.awardsContent, style: const TextStyle(fontSize: 16)),
          ),
        ),
      ),
    );
  }
}
