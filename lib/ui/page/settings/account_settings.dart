import 'package:braingain_app/service/supabase.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/ui/widget/outlined_card.dart';
import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
    super.key,
  });

  void _onLogout(BuildContext context) async {
    ConfirmDialog.show(
      context,
      title: 'Logout',
      content: 'Are you sure?',
      onConfirm: () => supabase.auth.signOut(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return OutlinedCard(
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'User Account',
              style: text.titleLarge?.merge(const TextStyle(
                fontWeight: FontWeight.bold,
              )),
            ),
          ),
          // Divider(),
          ListTile(
            title: Text('User ID', style: text.titleMedium),
            subtitle: SelectableText(
              supabase.auth.currentUser?.id ?? 'Not logged in',
              style: text.bodySmall?.merge(
                TextStyle(color: color.outline),
              ),
            ),
            trailing: FilledButton.icon(
              onPressed: () => _onLogout(context),
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}
