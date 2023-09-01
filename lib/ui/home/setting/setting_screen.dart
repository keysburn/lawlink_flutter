import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
          child: Text(""),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: const Row(
            children: [
              CircleAvatar(
                radius: 50, // Image radius
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "오정진",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "소원법률사무소",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
