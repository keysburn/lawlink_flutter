import 'package:flutter/material.dart';
import 'package:lawlink_flutter/ui/home/community/item_board_widget.dart';

class SubagentScreen extends StatefulWidget {
  const SubagentScreen({super.key});

  @override
  State<SubagentScreen> createState() => _SubagentScreenState();
}

class _SubagentScreenState extends State<SubagentScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabs: [
            Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text(
                '요청',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.center,
              child: const Text('대기',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
          indicatorColor: Colors.white,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: 50,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 10.0,
                    color: Colors.grey.shade200,
                    thickness: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: const ItemBoardWidget(),
                    onTap: () {},
                  );
                },
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: 50,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: 10.0,
                    color: Colors.grey.shade200,
                    thickness: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: const ItemBoardWidget(),
                    onTap: () {},
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
