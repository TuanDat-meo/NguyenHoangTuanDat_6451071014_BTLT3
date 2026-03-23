import 'package:flutter/material.dart';

import 'Bai1/apps/bai1_app.dart';
import 'Bai2/apps/bai2_app.dart';
import 'Bai3/apps/bai3_app.dart';
import 'Bai4/apps/bai4_app.dart';
import 'Bai5/apps/bai5_app.dart';
import 'Bai6/apps/bai6_app.dart';
import 'Bai7/apps/bai7_app.dart';
import 'Bai8/apps/bai8_app.dart';
import 'Bai9/apps/bai9_app.dart';
import 'Bai10/apps/bai10_app.dart';

void main() {
  runApp(const GestureLabApp());
}

class _Exercise {
  final String title;
  final String subtitle;
  final Widget app;

  const _Exercise({
    required this.title,
    required this.subtitle,
    required this.app,
  });
}

final List<_Exercise> _exercises = [
  _Exercise(title: 'Bài 1', subtitle: 'Tap cơ bản', app: const Bai1App()),
  _Exercise(title: 'Bài 2', subtitle: 'Double Tap đổi màu', app: const Bai2App()),
  _Exercise(title: 'Bài 3', subtitle: 'Long Press thông báo', app: const Bai3App()),
  _Exercise(title: 'Bài 4', subtitle: 'Đếm số lần Tap', app: const Bai4App()),
  _Exercise(title: 'Bài 5', subtitle: 'Pointer Events tọa độ', app: const Bai5App()),
  _Exercise(title: 'Bài 6', subtitle: 'Kéo hình tròn', app: const Bai6App()),
  _Exercise(title: 'Bài 7', subtitle: 'Custom Slider', app: const Bai7App()),
  _Exercise(title: 'Bài 8', subtitle: 'Grid Tap đổi màu', app: const Bai8App()),
  _Exercise(title: 'Bài 9', subtitle: 'Swipe đổi hình', app: const Bai9App()),
  _Exercise(title: 'Bài 10', subtitle: 'Kéo để xóa item', app: const Bai10App()),
];

// ─── Root App ─────────────────────────────────────────────────────────────────
class GestureLabApp extends StatelessWidget {
  const GestureLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài tập chương 5',
      theme: ThemeData(
        colorSchemeSeed: Colors.grey,
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      ),
      home: const HomeScreen(),
    );
  }
}

// ─── Home Screen ──────────────────────────────────────────────────────────────
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _open(BuildContext context, _Exercise exercise) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => exercise.app),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: CustomScrollView(
        slivers: [
          // ── App Bar ──────────────────────────────────────────────────────
          SliverAppBar(
            expandedHeight: 120,
            pinned: true,
            backgroundColor: const Color(0xFFFAFAFA),
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            scrolledUnderElevation: 0.5,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 24, bottom: 16),
              title: const Text(
                'Gesture Lab',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Color(0xFF111111),
                  letterSpacing: -0.5,
                ),
              ),
              background: const ColoredBox(color: Color(0xFFFAFAFA)),
            ),
          ),

          // ── Divider ──────────────────────────────────────────────────────
          const SliverToBoxAdapter(
            child: Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),
          ),

          // ── Exercise List ─────────────────────────────────────────────────
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final ex = _exercises[index];
                final isLast = index == _exercises.length - 1;
                return _ExerciseRow(
                  exercise: ex,
                  index: index + 1,
                  isLast: isLast,
                  onTap: () => _open(context, ex),
                );
              },
              childCount: _exercises.length,
            ),
          ),

          const SliverPadding(padding: EdgeInsets.only(bottom: 32)),
        ],
      ),
    );
  }
}

// ─── Exercise Row ─────────────────────────────────────────────────────────────
class _ExerciseRow extends StatelessWidget {
  final _Exercise exercise;
  final int index;
  final bool isLast;
  final VoidCallback onTap;

  const _ExerciseRow({
    required this.exercise,
    required this.index,
    required this.isLast,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          splashColor: Colors.black.withOpacity(0.04),
          highlightColor: Colors.black.withOpacity(0.02),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
            child: Row(
              children: [
                // Index number
                SizedBox(
                  width: 32,
                  child: Text(
                    index.toString().padLeft(2, '0'),
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFBBBBBB),
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                // Title & subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exercise.subtitle,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF111111),
                          letterSpacing: -0.1,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        exercise.title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFAAAAAA),
                        ),
                      ),
                    ],
                  ),
                ),
                // Arrow
                const Icon(
                  Icons.chevron_right,
                  size: 18,
                  color: Color(0xFFCCCCCC),
                ),
              ],
            ),
          ),
        ),
        if (!isLast)
          const Padding(
            padding: EdgeInsets.only(left: 72),
            child: Divider(height: 1, thickness: 1, color: Color(0xFFF0F0F0)),
          ),
      ],
    );
  }
}