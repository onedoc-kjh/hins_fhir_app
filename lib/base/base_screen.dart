import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseScreen extends ConsumerWidget {
  final String? title;
  final Widget? body;
  const BaseScreen({
    super.key,
    this.title,
    this.body,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: title != null
          ? AppBar(
              centerTitle: true,
              title: Text(
                title ?? '',
              ),
              leading: Navigator.canPop(context)
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        }
                      },
                    )
                  : null,
            )
          : null,
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: body ?? const SizedBox()),
    );
  }

  push(BuildContext context, ConsumerWidget page) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ));
  }
}
