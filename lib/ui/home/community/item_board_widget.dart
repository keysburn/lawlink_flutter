import 'package:flutter/material.dart';

class ItemBoardWidget extends StatelessWidget {
  const ItemBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
      color: Colors.white70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  "익명",
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.more_vert),
                color: Colors.grey,
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          child: TextButton(
                            onPressed: () => "",
                            child: const SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: Center(
                                child: Text(
                                  "신고하기",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });
                },
              )
            ],
          ),
          const Text(
            "나에게 꼭 맞는 부트캠프 고르는법",
            maxLines: 1,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "개발자를 꿈꾸는 많은 분들이 부트캠프 혹은 국비지원 학원을 알아보시는데요, 막상 정보를 찾다 보면 어떤 과정이 내게 맞는지 알기 어렵죠",
            maxLines: 3,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          const Spacer(),
          const Row(
            children: [
              Icon(
                Icons.message,
                color: Colors.grey,
                size: 15,
              ),
              Text(
                "1422",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Text(
                "11초전",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
