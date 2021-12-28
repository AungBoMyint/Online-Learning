import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';

class CustomUserProfileAppBar extends StatelessWidget {
  final Size size;
  const CustomUserProfileAppBar({Key? key, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocConsumer<AuthBloc, AuthState>(
              builder: (context, state) {
                final userModal = state.userModal;
                return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: size.height * 0.3,
                      width: size.width,
                      child: Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            //User's Profile Image
                            SizedBox(
                              height: size.height * 0.2,
                              width: size.width * 0.4,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: CachedNetworkImage(
                                  imageUrl: userModal!.image.isNotEmpty
                                      ? userModal.image
                                      : "https://w7.pngwing.com/pngs/178/595/png-transparent-user-profile-computer-icons-login-user-avatars.png",
                                  fit: BoxFit.fill,
                                  progressIndicatorBuilder:
                                      (context, url, status) {
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

                            ///Space
                            const SizedBox(width: 10),
                            ///////User's Name
                            Text(
                              userModal.userName,
                              style: GoogleFonts.lobster(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ));
              },
              listener: (context, state) {},
            ),

            ///Space
            //const SizedBox(height: 5),

            TabBar(indicatorColor: Colors.blue, tabs: [
              ////Setting Tab Bar
              Tab(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(Icons.settings, color: Colors.black),
                      const SizedBox(width: 10),
                      Text("Setting",
                          style: GoogleFonts.actor(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
              ),
              ////Your Created Course
              Tab(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.stickyNote,
                        color: Colors.black,
                      ),
                      Text("Your Created Course",
                          style: GoogleFonts.actor(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ))
                    ]),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
