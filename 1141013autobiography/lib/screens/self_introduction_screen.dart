import 'package:flutter/material.dart';
import 'package:auto11410131/generated/l10n/app_localizations.dart';

class SelfIntroductionScreen extends StatelessWidget {
  const SelfIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildProfileHeader(localizations),
          const SizedBox(height: 20),
          _buildSummaryCard(localizations),
          const SizedBox(height: 20),
          _buildContactCard(localizations),
        ],
      ),
    );
  }

  Widget _buildProfileHeader(AppLocalizations localizations) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/小強頭貼.jpg'),
          onBackgroundImageError: null,
        ),
        const SizedBox(height: 16),
        Text(
          localizations.profileName,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          localizations.profileSchool,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          localizations.profileMotto,
          style: const TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }

  Widget _buildSummaryCard(AppLocalizations localizations) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localizations.aboutMeTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              localizations.aboutMeContent,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5, // Line spacing
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard(AppLocalizations localizations) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.email, color: Colors.blueAccent),
            title: Text(localizations.contactEmailLabel),
            subtitle: const Text('c112151106@nkust.edu.tw'),
          ),
          const Divider(height: 1, indent: 16, endIndent: 16),
          ListTile(
            leading: const Icon(Icons.phone, color: Colors.green),
            title: Text(localizations.contactPhoneLabel),
            subtitle: const Text('07 335 5111'),
          ),
        ],
      ),
    );
  }
}
