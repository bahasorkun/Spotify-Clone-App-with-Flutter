import 'package:flutter/material.dart';
import 'package:spotify_clone_app/common/widgets/appbar/app_bar.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BasicAppBar(),
      body: Center(
        child: Text("Help"),
      ),
    );
  }
}
