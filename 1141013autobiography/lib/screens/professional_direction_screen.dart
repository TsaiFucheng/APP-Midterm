import 'package:flutter/material.dart';
import 'package:auto11410131/generated/l10n/app_localizations.dart';

class ProfessionalDirectionScreen extends StatelessWidget {
  const ProfessionalDirectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildHeaderCard(context),
          const SizedBox(height: 20),
          _buildSectionCard(
            context,
            title: localizations.directionWhyTitle,
            icon: Icons.question_answer,
            iconColor: Colors.blueAccent,
            content: localizations.directionWhyContent,
          ),
          const SizedBox(height: 20),
          _buildInterestsCard(context),
          const SizedBox(height: 20),
          _buildSectionCard(
            context,
            title: localizations.directionOutlookTitle,
            icon: Icons.rocket_launch,
            iconColor: Colors.green,
            content: localizations.directionOutlookContent,
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderCard(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localizations.directionTitle,
              style: const TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 8),
            Text(
              localizations.directionSubtitle,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required IconData icon, required Color iconColor, required String content}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(icon, color: iconColor),
              title: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            Text(content, style: const TextStyle(fontSize: 16, height: 1.5)),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestsCard(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.interests, color: Colors.orangeAccent),
              title: Text(localizations.directionInterestsTitle, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            _buildInterestItem(localizations.directionInterest1Title, localizations.directionInterest1Content),
            const Divider(height: 20),
            _buildInterestItem(localizations.directionInterest2Title, localizations.directionInterest2Content),
            const Divider(height: 20),
            _buildInterestItem(localizations.directionInterest3Title, localizations.directionInterest3Content),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestItem(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('• $title', style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(subtitle, style: const TextStyle(fontSize: 15, color: Colors.black87, height: 1.4)),
        ),
      ],
    );
  }
}
