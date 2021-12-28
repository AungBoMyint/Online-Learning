import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';

class HomeTopAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final double width;
  const HomeTopAppBarWidget({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 56),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Hello",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    //Space
                    const SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      ///UserName
                      BlocConsumer<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return Text(
                            state.userModal?.userName ?? "",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          );
                        },
                        listener: (context, state) {},
                      ),
                      //Space
                      const SizedBox(
                        width: 5,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.handSparkles,
                        color: Colors.yellow,
                      ),
                    ])
                  ]),
            ),

            ///User Circle Avatar
            BlocConsumer<AuthBloc, AuthState>(
              builder: (context, state) {
                final userImage = state.userModal?.image;
                if (userImage != null && userImage.isNotEmpty) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: CachedNetworkImage(
                          imageUrl: userImage,
                          fit: BoxFit.fill,
                          progressIndicatorBuilder: (context, url, status) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  value: status.progress,
                                ),
                              ),
                            );
                          },
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                  );
                } else {
                  return const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              listener: (context, state) {},
            ),
            /*CircleAvatar(
              radius: 40,
              backgroundColor: Colors.blue[200],
              foregroundImage: const AssetImage(
                "images/japan_girl_user.png",
              ),
            ),*/
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(56.0, width);
}
