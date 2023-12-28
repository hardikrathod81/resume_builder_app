import 'package:flutter/material.dart';
import 'package:resume_builder_app/resume_data.dart';
import 'package:resume_builder_app/update_resime.dart';

class ResumeDetails extends StatefulWidget {
  const ResumeDetails({super.key, required this.resume});
  final Resume resume;

  @override
  State<ResumeDetails> createState() => _ResumeDetailsState();
}

class _ResumeDetailsState extends State<ResumeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Detail Page'),
      ),
      body: Column(
        children: [
          Text('Name : ${widget.resume.name}'),
          const SizedBox(
            height: 10,
          ),
          Text('Skils : ${widget.resume.skills}'),
          const SizedBox(
            height: 10,
          ),
          Text('Experince : ${widget.resume.experince}'),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpadateResume(
                    resume: widget.resume,
                  ),
                ),
              ).then((_) {
                setState(() {});
              });
            },
            child: const Text('Update Resume'),
          ),
        ],
      ),
    );
  }
}
