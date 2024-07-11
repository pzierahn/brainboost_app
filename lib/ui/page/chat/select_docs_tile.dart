import 'package:braingain_app/generated/collection_service.pb.dart';
import 'package:braingain_app/ui/page/chat/select_docs_dialog.dart';
import 'package:flutter/material.dart';

class SelectDocsTile extends StatelessWidget {
  const SelectDocsTile({
    super.key,
    required this.documents,
    required this.onChanged,
    required this.collection,
  });

  final DocumentSelection documents;
  final ValueChanged<DocumentSelection> onChanged;
  final Collection collection;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    String subtitle;
    Color subtitleColor;

    if (documents.isEmpty()) {
      subtitle = 'Documents are automatically selected based on the prompt';
      subtitleColor = color.outline;
    } else {
      subtitle = documents.getNames().join(', ');
      subtitleColor = color.primary;
    }

    return ListTile(
      leading: documents.isEmpty()
          ? Icon(
              Icons.attach_file_outlined,
              color: color.onSurface,
            )
          : Icon(
              Icons.task_outlined,
              color: color.primary,
            ),
      title: Text(
        'Attach Documents',
        style: text.bodyMedium?.merge(TextStyle(
          color: color.onSurface,
        )),
      ),
      subtitle: Text(
        subtitle,
        style: text.bodySmall?.copyWith(
          color: subtitleColor,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () async {
        final docs = await SelectDocsDialog.show(
          context: context,
          documents: documents,
          collection: collection,
        );

        if (docs != null) {
          onChanged(docs);
        }
      },
      hoverColor: color.primaryContainer,
    );
  }
}
