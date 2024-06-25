// lib/screens/settings_screen.dart
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  bool _themeSwitchValue = false; // Example switch value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Theme Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SwitchListTile(
              title: Text('Dark Mode'),
              value: _themeSwitchValue,
              onChanged: (value) {
                // Implement logic to change theme
                _themeSwitchValue = value;
              },
            ),
            SizedBox(height: 16),
            Text(
              'Notification Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Receive Notifications'),
              trailing: Switch(
                value: false, // Example switch value
                onChanged: (value) {
                  // Implement logic to change notification settings
                },
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement save settings functionality
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Settings saved'),
                  ),
                );
              },
              child: Text('Save Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
