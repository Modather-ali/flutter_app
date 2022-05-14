import 'package:app/modules/teacher.dart';
import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  final Teacher teacher;
  const ListCard({Key? key, required this.teacher}) : super(key: key);

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  minVerticalPadding: 0,
                  minLeadingWidth: 0,
                  horizontalTitleGap: 10.0,
                  leading: Stack(
                    children: [
                      Image.asset("assets/user.png", height: 40),
                      Positioned(
                        bottom: 3,
                        right: 3,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text(
                    widget.teacher.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  subtitle: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 15,
                      ),
                      Text(
                        "Egypt",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFF5C614),
                        size: 15,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),
                      ),
                      Text(
                        "(12)",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Icon(
                    Icons.bookmark_outline_sharp,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              MaterialButton(
                onPressed: () {},
                color: const Color(0xFFF5C614),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 0.0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.call,
                      size: 17,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "CALL",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(3),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text("Kind",
                      style: TextStyle(
                        fontSize: 12,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(3),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text("Straight-Forward",
                      style: TextStyle(
                        fontSize: 12,
                      )),
                ),
                Container(
                  margin: const EdgeInsets.all(3),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text("Kind",
                      style: TextStyle(
                        fontSize: 12,
                      )),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            widget.teacher.description,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
