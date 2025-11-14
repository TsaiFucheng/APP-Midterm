import 'package:flutter/material.dart';
import 'package:auto11410131/generated/l10n/app_localizations.dart';

class StudyPlanScreen extends StatelessWidget {
  const StudyPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildPlanCard(
            context,
            icon: Icons.track_changes,
            iconColor: Colors.redAccent,
            title: localizations.planTitleOverall,
            content: localizations.planContentOverall,
          ),
          const SizedBox(height: 20),
          _buildDetailedPlanCard(
            context,
            icon: Icons.directions_run,
            iconColor: Colors.orangeAccent,
            title: localizations.planTitleShort,
            details: {
              localizations.planLabelCourses: localizations.planContentCourses,
              localizations.planLabelTech: localizations.planContentTech,
              localizations.planLabelExperience: localizations.planContentExperience,
            },
          ),
          const SizedBox(height: 20),
          _buildPlanCard(
            context,
            icon: Icons.flight_takeoff,
            iconColor: Colors.blueAccent,
            title: localizations.planTitleMid,
            content: localizations.planContentMid,
          ),
          const SizedBox(height: 20),
          _buildPlanCard(
            context,
            icon: Icons.flag,
            iconColor: Colors.green,
            title: localizations.planTitleLong,
            content: localizations.planContentLong,
          ),
        ],
      ),
    );
  }

  Widget _buildPlanCard(BuildContext context, {required IconData icon, required Color iconColor, required String title, required String content}) {
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
              leading: Icon(icon, size: 30, color: iconColor),
              title: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailedPlanCard(BuildContext context, {required IconData icon, required Color iconColor, required String title, required Map<String, String> details}) {
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
              leading: Icon(icon, size: 30, color: iconColor),
              title: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            ...details.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('• ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: '${entry.key}：', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                            TextSpan(text: entry.value, style: const TextStyle(fontSize: 16)),
                          ],
                        ),
                        style: const TextStyle(height: 1.5),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
