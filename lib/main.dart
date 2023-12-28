import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:resume_builder_app/resume_builder.dart';
import 'package:resume_builder_app/resume_database.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ResumeAdapter());
  await Hive.openBox<Resume>('resumes');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResumeBuilderHomePage(),
    );
  }
}
