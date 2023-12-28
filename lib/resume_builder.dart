import 'package:flutter/material.dart';
import 'package:resume_builder_app/add_resume.dart';
import 'package:resume_builder_app/resume_list.dart';

class ResumeBuilderHomePage extends StatefulWidget {
  const ResumeBuilderHomePage({super.key});

  @override
  State<ResumeBuilderHomePage> createState() => _ResumeBuilderHomePageState();
}

class _ResumeBuilderHomePageState extends State<ResumeBuilderHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Builder'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddResume(),
                ),
              ).then((_) => _load());
            },
            child: const Text('Add Resume'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResumeList(),
                ),
              );
            },
            child: const Text('View All Resume'),
          ),
        ],
      ),
    );
  }

  void _load() {
    setState(() {});
  }
}
