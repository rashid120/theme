import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/providers/theme_changer_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final themeChanger = Provider.of<ThemeChangerProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
              title: const Text('Light Mode'),
                value: ThemeMode.light,
                groupValue: themeChanger.currentThemeMode,
                onChanged: themeChanger.changeThemeMode,
            ),

            RadioListTile<ThemeMode>(
              title: const Text('Dark Mode'),
                value: ThemeMode.dark,
                groupValue: themeChanger.currentThemeMode,
                onChanged: themeChanger.changeThemeMode,
            ),

            RadioListTile<ThemeMode>(
              title: const Text('System Mode'),
                value: ThemeMode.system,
                groupValue: themeChanger.currentThemeMode,
                onChanged: themeChanger.changeThemeMode
            ),
          ],
        ),
      ),
    );
  }
}
