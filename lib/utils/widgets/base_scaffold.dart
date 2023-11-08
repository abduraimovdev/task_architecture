import 'package:flutter/material.dart';
import '/gen/colors.gen.dart';

class BaseScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;

  const BaseScaffold({
    super.key,
    this.body,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [1.0, 0.4],
          colors: [
            ColorName.background,
            ColorName.background,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: appBar,
        body: body,
      ),
    );
  }
}
