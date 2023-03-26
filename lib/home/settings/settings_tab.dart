import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_f/home/settings/language_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 4,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Text(
                AppLocalizations.of(context)!.language_text,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            AppLocalizations.of(context)!.themes,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Text(
              'Light',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return LanguageBottomSheet();
        });
  }
}
