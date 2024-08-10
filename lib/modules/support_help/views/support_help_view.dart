import 'package:flutter/material.dart';

class SupportHelpView extends StatelessWidget {
  const SupportHelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support & Help'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildFAQSection(),
            const SizedBox(height: 20),
            _buildContactSupportSection(context),
            const SizedBox(height: 20),
            _buildFeedbackSection(context),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }

  Widget _buildFAQSection() {
    return const Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Frequently Asked Questions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Add your FAQ content here
            Text(
              'Q: How do I reset my password?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('A: You can reset your password from the login screen.'),
            // Add more FAQ items as needed
          ],
        ),
      ),
    );
  }

  Widget _buildContactSupportSection(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: const Text(
          'Contact Support',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          // Implement action to contact support
          // You can use different methods like email, phone, chat, etc.
          // For example:
          _showContactSupportDialog(context);
        },
      ),
    );
  }

  void _showContactSupportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Contact Support'),
          content: const Text(
              'You can contact support via email at support@example.com'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFeedbackSection(BuildContext context) {
    return Card(
      elevation: 4,
      child: ListTile(
        title: const Text(
          'Give Feedback',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          // Implement action to give feedback
          // You can navigate to a feedback form or open an email composer, etc.
          // For example:
          _navigateToFeedbackScreen(context);
        },
      ),
    );
  }

  void _navigateToFeedbackScreen(BuildContext context) {
    // Navigate to the feedback screen
    // Implement your feedback screen logic here
  }
}
