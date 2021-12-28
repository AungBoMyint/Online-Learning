import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const Card(
          elevation: 1,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/japan_girl_user.png"),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                    "This is the best course!.\n "
                    "his is the best course!.\n So you should try to read this.",
                    style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: 10,
    );
  }
}
