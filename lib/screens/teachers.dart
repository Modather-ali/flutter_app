import 'package:app/modules/teacher.dart';
import 'package:flutter/material.dart';

import 'widgets/horizontal_card.dart';

class TeachersScreen extends StatefulWidget {
  const TeachersScreen({Key? key}) : super(key: key);

  @override
  State<TeachersScreen> createState() => _TeachersScreenState();
}

class _TeachersScreenState extends State<TeachersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextButton(
          onPressed: () {},
          child: const Text(
            "Filter",
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.window,
              size: 25,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.list,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: teachersList.length,
        itemBuilder: (context, index) {
          return HorizontalCard(
            teacher: teachersList[index],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
