import 'package:app/modules/teacher.dart';
import 'package:flutter/material.dart';

import 'widgets/grid_card.dart';
import 'widgets/list_card.dart';

class TeachersScreen extends StatefulWidget {
  const TeachersScreen({Key? key}) : super(key: key);

  @override
  State<TeachersScreen> createState() => _TeachersScreenState();
}

class _TeachersScreenState extends State<TeachersScreen> {
  bool isList = true;
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
          InkWell(
            onTap: () {
              setState(() {
                isList = false;
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                !isList
                    ? Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(5)),
                      )
                    : const SizedBox(),
                const Icon(
                  Icons.window,
                  size: 25,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 8),
            child: InkWell(
              onTap: () {
                setState(() {
                  isList = true;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  isList
                      ? Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(5)),
                        )
                      : const SizedBox(),
                  const Icon(
                    Icons.list,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: isList
          ? ListView.separated(
              padding: const EdgeInsets.all(10),
              itemCount: teachersList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    AnimatedPadding(
                      duration: const Duration(seconds: 1),
                      padding: EdgeInsets.only(top: isList ? 0 : 40),
                      child: ListCard(
                        teacher: teachersList[index],
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            )
          : GridView.builder(
              itemCount: teachersList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
              ),
              itemBuilder: (context, index) {
                return GridCard(
                  teacher: teachersList[index],
                );
              },
            ),
    );
  }
}
