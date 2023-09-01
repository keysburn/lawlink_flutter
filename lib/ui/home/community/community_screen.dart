import 'package:flutter/material.dart';
import 'package:lawlink_flutter/ui/home/community/item_board_widget.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  final _nameEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: _getCategory(),
          ),
        ),
        Expanded(
            child: ListView.separated(
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
        ))
      ],
    );
  }

  List<Widget> _getCategory() {
    List<String> categoryList = [
      "자유",
      "방임대",
      "중고거래",
      "동문",
      "질문",
      "구인",
      "판례",
    ];
    return categoryList.map((e) => _categoryWidget(e)).toList();
  }

  //카테고리 버튼 위젯
  Widget _categoryWidget(String category) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(5),
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.black,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        child: Text(
          category,
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
