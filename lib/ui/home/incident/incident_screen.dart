import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawlink_flutter/routes/app_routes.dart';
import 'package:lawlink_flutter/ui/home/incident/item_incident.dart';

class IncidentScreen extends StatefulWidget {
  const IncidentScreen({super.key});

  @override
  State<IncidentScreen> createState() => _IncidentScreenState();
}

class _IncidentScreenState extends State<IncidentScreen> {
  final _nameEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: TextField(
                onSubmitted: (value) {},
                controller: _nameEditController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: '검색어를 입력하세요',
                  suffixIcon: IconButton(
                    onPressed: () {
                      _nameEditController.clear();
                    },
                    icon: const Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: 40,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.grey.shade200,
                    thickness: 5,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return const ItemIncidentWidget();
                },
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.black,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
