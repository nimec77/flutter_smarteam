import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  static Page page() => const MaterialPage<void>(child: ProjectsPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smarteam'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Большой текст', style: Theme.of(context).textTheme.headline1),
            ElevatedButton(onPressed: () {}, child: const Text('Просто текст')),
          ],
        ),
      ),
    );
  }
}
