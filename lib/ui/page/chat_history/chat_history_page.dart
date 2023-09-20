import 'package:braingain_app/generated/braingain.pb.dart';
import 'package:braingain_app/service/braingain.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:flutter/material.dart';

class ChatHistoryPage extends StatelessWidget {
  const ChatHistoryPage({
    super.key,
    required this.collection,
  });

  final Collections_Collection collection;

  static Future<void> open(
      BuildContext context, Collections_Collection collection) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChatHistoryPage(collection: collection),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(collection.name),
      ),
      body: FutureBuilder<ChatMessages>(
          future: braingain.getChatHistory(Collection()..id = collection.id),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }

            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return ConstrainedListViewBuilder(
              itemCount: snapshot.data!.ids.length,
              itemBuilder: (context, index) {
                final id = snapshot.data!.ids[index];
                return ListTile(
                  title: Text(id),
                );
              },
            );
          }),
    );
  }
}
