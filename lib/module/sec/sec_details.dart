import 'package:demo/infra/sec/notifier/doc_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecDetails extends ConsumerWidget {
  const SecDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int documentLength = 0;
    final documentState = ref.watch(securityDocumentsNotifierProvider(securityId: "1"));
    documentState.whenData((data) {
      documentLength = data.length;
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                ref.read(securityDocumentsNotifierProvider(securityId: "1").notifier).fetchSecurityDocuments(securityId: "1");
              },
              child: Text("Details"),
            ),
            Text(documentLength.toString()),
          ],
        ),
      ),
    );
  }
}
