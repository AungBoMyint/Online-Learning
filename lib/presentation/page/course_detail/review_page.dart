import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/domain/data/theme.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Review",
          style: AppThemeData.darkText.headline1,
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<DataBloc, DataState>(
        builder: (context, state) {
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
        },
        listener: (context, state) {
          //TODO: Do Something.
        },
      ),
      bottomSheet: SizedBox(
          height: size.height * 0.1,
          width: size.width,
          child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ///TextField
                  SizedBox(
                    width: size.width * 0.7,
                    child: const TextField(
                      maxLines: 2,
                      decoration: InputDecoration(
                        hintText: "Leave Comment",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ////Add This Message Into FirebaseFirestore
                    },
                    icon: const Icon(
                      FontAwesomeIcons.arrowCircleRight,
                      color: Colors.blue,
                    ),
                  ),
                ]),
          )),
    );
  }
}
