import 'package:e_comm/Themes/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsTab extends HookConsumerWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appThemeState = ref.watch(appThemeStateNotifier);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Settings',
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: const Color.fromARGB(255, 220, 220, 220),
                ),
              ),
              child: ListTile(
                leading: appThemeState.isDarkModeEnabled
                    ? const Icon(
                        Icons.wb_sunny_sharp,
                        color: Colors.white,
                      )
                    : const Icon(Icons.nightlight_round),
                title: appThemeState.isDarkModeEnabled
                    ? const Text(
                        "Light Mode",
                        style: TextStyle(color: Colors.white),
                      )
                    : const Text("Dark Mode"),
                subtitle: appThemeState.isDarkModeEnabled
                    ? const Text(
                        "Change Theme Color",
                        style: TextStyle(color: Colors.white),
                      )
                    : const Text("Change Theme Color"),
                trailing: CupertinoSwitch(
                  trackColor: Colors.grey,
                  value: appThemeState.isDarkModeEnabled,
                  onChanged: (enabled) {
                    if (enabled) {
                      appThemeState.setDarkTheme();
                    } else {
                      appThemeState.setLightTheme();
                    }
                  },
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
