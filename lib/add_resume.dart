import 'package:flutter/material.dart';
import 'package:resume_builder_app/resume_database.dart';

class AddResume extends StatefulWidget {
  const AddResume({
    super.key,
  });

  @override
  State<AddResume> createState() => _AddResumeState();
}

class _AddResumeState extends State<AddResume> {
  TextEditingController nameController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController experinceController = TextEditingController();

  void _clearTextFields() {
    nameController.clear();
    skillsController.clear();
    experinceController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Add Resume Page'),
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
                      await HiveDataBaseHelp().addResume(Resume(
                          name: nameController.text,
                          skills: skillsController.text,
                          experince: experinceController.text));

                      _clearTextFields();
                    },
                    child: Text('Add Resume')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
