import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/brainboost.dart';
import 'package:braingain_app/ui/page/collection/document_edit_dialog.dart';
import 'package:braingain_app/ui/page/upload/upload_body.dart';
import 'package:braingain_app/ui/page/upload/upload_page.dart';
import 'package:braingain_app/ui/widget/confirm_dialog.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/error_bar.dart';
import 'package:braingain_app/ui/widget/simple_scaffold.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  static const route = 'documents';

  static Future<Object?> open(
    BuildContext context,
    Collections_Collection collection,
  ) =>
      Navigator.of(context).pushNamed(route, arguments: collection);

  @override
  Widget build(BuildContext context) {
    final collection =
        ModalRoute.of(context)?.settings.arguments as Collections_Collection?;

    if (collection == null) {
      return const ErrorScaffold(
        title: 'Chat History',
        error: 'No collection found',
      );
    }

    return _CollectionPage(
      collection: collection,
    );
  }
}

class _CollectionPage extends StatefulWidget {
  const _CollectionPage({
    required this.collection,
  });

  final Collections_Collection collection;

  @override
  State createState() => _CollectionPageState();
}

class _CollectionPageState extends State<_CollectionPage> {
  void _onUpload() => UploadPage.open(context, widget.collection);

  Future<void> _onEditDocument(Documents_Document doc) async {
    final ref = Document()
      ..collectionId = widget.collection.id
      ..filename = doc.filename
      ..id = doc.id;

    final filename = await EditDocumentDialog.show(context, ref);
    if (filename == null || filename.isEmpty) {
      return;
    }

    ref.filename = filename;

    brainboost.updateDocument(ref).then((_) {
      SimpleSnackBar.show(
        context,
        'Updated ${doc.filename}',
      );
      setState(() {});
    }).catchError((error) {
      ErrorSnackBar.show(context, error);
    });
  }

  Future<void> _onDelete(Documents_Document doc) async {
    final ref = Document()
      ..collectionId = widget.collection.id
      ..id = doc.id;

    final delete = await ConfirmDialog.show(
      context,
      title: 'Delete ${doc.filename}?',
      content: 'This action cannot be undone',
    );
    if (delete == null || !delete) {
      return;
    }

    brainboost.deleteDocument(ref).then((_) {
      SimpleSnackBar.show(
        context,
        'Deleted ${doc.filename}',
      );
      setState(() {});
    }).catchError((error) {
      ErrorSnackBar.show(context, error);
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collection.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.upload),
            onPressed: _onUpload,
          ),
        ],
      ),
      body: FutureBuilder<Documents>(
        future: brainboost.listDocuments(
          DocumentFilter()..collection = widget.collection.id,
        ),
        builder: (context, snap) {
          if (!snap.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snap.data!.items.isEmpty) {
            return UploadBody(
              collection: widget.collection,
            );
          }

          return ConstrainedListView(
              children: snap.data!.items
                  .map(
                    (doc) => ListTile(
                      leading: CircleAvatar(
                        backgroundColor: color.primaryContainer,
                        foregroundColor: color.onPrimaryContainer,
                        child: const Icon(Icons.description_outlined),
                      ),
                      title: SelectableText(doc.filename),
                      subtitle: Text(
                        'Pages ${doc.pages}',
                        style: text.bodySmall?.merge(TextStyle(
                          color: color.outline,
                        )),
                      ),
                      trailing: PopupMenuButton(
                        itemBuilder: (context) => const [
                          PopupMenuItem(
                            value: 'edit',
                            child: Text('Edit'),
                          ),
                          PopupMenuItem(
                            value: 'delete',
                            child: Text('Delete'),
                          ),
                        ],
                        onSelected: (value) {
                          switch (value) {
                            case 'edit':
                              _onEditDocument(doc);
                              break;
                            case 'delete':
                              _onDelete(doc);
                              break;
                          }
                        },
                      ),
                    ),
                  )
                  .toList());
        },
      ),
    );
  }
}
