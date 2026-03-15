import 'package:flutter/material.dart';
import '../models/course_model.dart';
import '../utils/course_data.dart';
import '../widgets/course_banner.dart';
import '../widgets/enroll_button.dart';

class CourseDetailView extends StatelessWidget {
  const CourseDetailView({super.key});

  static const CourseModel _course = CourseData.sampleCourse;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CourseBanner(imageUrl: _course.imageUrl),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _course.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Icon(Icons.person_outline,
                        size: 18, color: Colors.grey),
                    const SizedBox(width: 6),
                    Text(
                      'Instructor: ${_course.instructor}',
                      style: const TextStyle(
                          fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  _course.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 32),
                Center(
                  child: EnrollButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Đăng ký khóa học thành công!'),
                          backgroundColor: Colors.blue,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Text(
            ' Nguyễn Hoàng Tuấn Đạt - 6451071014',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }
}
