import 'package:flutter/material.dart';
import 'package:resume_builder_app/resume_data.dart';
import 'package:resume_builder_app/resume_deatil.dart';

class ResumeList extends StatefulWidget {
  const ResumeList({super.key});

  @override
  State<ResumeList> createState() => _ResumeListState();
}

class _ResumeListState extends State<ResumeList> {
  List<Resume> resumes = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    List<Resume> allResume = await HiveDataBaseHelp.getResume();
    setState(() {
      resumes = allResume;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Resume'),
      ),
      body: ListView.builder(
        itemCount: resumes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(resumes[index].name),
            subtitle: Text(resumes[index].skills),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResumeDetails(resume: resumes[index]),
                ),
              ).then((_) => _load());
            },
          );
        },
      ),
    );
  }
}
