import 'package:boishaki_mart/app/app.dart';
import 'package:boishaki_mart/app/extensions/localization_extension.dart';
import 'package:flutter/material.dart';

class LanguageChangeSwitch extends StatelessWidget {
  const LanguageChangeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(context.localization.selectLanguage),
      trailing: DropdownMenu<Locale>(
          dropdownMenuEntries: EStore.languageController.supportedLocals.map((locale){
            return DropdownMenuEntry(
                value: locale , label: locale.languageCode);
          }).toList(),
          onSelected: (Locale ? locale){
             EStore.languageController.changeLocal(locale!);
          },
      ),
    );
  }
}
