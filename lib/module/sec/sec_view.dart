import 'package:demo/infra/sec/notifier/doc_list.dart';
import 'package:demo/module/sec/sec_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecView extends StatelessWidget {
  const SecView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecDetails()));
          },
          child: Consumer(
            builder: (context, ref, child) {
              final documentState = ref.watch(securityDocumentsNotifierProvider(securityId: "1"));
              return documentState.when(
                data: (document) {
                  return document.isEmpty
                      ? const Column(mainAxisAlignment: MainAxisAlignment.center, children: [Center(child: Text("No data"))])
                      : Container(color: Colors.red, child: Text(document[0].documentName ?? ""));
                },
                error: (error, stackTrace) => const SizedBox(),
                loading: () => const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
    );
  }
}
