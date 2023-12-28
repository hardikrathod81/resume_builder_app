import 'package:flutter/material.dart';
import 'package:resume_builder_app/resume_data.dart';

class UpadateResume extends StatefulWidget {
  const UpadateResume({super.key, required this.resume});
  final Resume resume;

  @override
  State<UpadateResume> createState() => _UpadateResumeState();
}

TextEditingController nameController = TextEditingController();
TextEditingController skillsController = TextEditingController();
TextEditingController experinceController = TextEditingController();

class _UpadateResumeState extends State<UpadateResume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Add Resume Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Name'),
            TextField(
              controller: nameController,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Skills'),
            TextField(
              controller: skillsController,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Experience'),
            TextField(
              controller: experinceController,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    widget.resume.name = nameController.text;
                    widget.resume.skills = skillsController.text;
                    widget.resume.experince = experinceController.text;
                    await widget.resume.save();
                  },
                  child: const Text(' Resume'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
