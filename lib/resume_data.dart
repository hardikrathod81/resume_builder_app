import 'package:hive/hive.dart';

part 'resume_data.g.dart';

@HiveType(typeId: 0)
class Resume extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  String skills;
  @HiveField(2)
  String experince;

  Resume({
    required this.name,
    required this.skills,
    required this.experince,
  });
}

class HiveDataBaseHelp {
  static Future<void> addResume(Resume resume) async {
    final box = await Hive.openBox<Resume>('resumes');
    await box.add(resume);
  }

  static Future<List<Resume>> getResume() async {
    final box = await Hive.openBox<Resume>('resumes');
    return box.values.toList();
  }
}
