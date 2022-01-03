import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/domain/data/theme.dart';

class CustomUserProfileAppBar extends StatelessWidget {
  final Size size;
  const CustomUserProfileAppBar({Key? key, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.3,
      child: SingleChildScrollView(
        child: BlocConsumer<AuthBloc, AuthState>(
          builder: (context, state) {
            final userModal = state.userModal;
            return Padding(
                padding: const EdgeInsets.only(top: 0),
                child: SizedBox(
                  height: size.height * 0.3,
                  width: size.width,
                  child: Container(
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                      )
                    ]),
                    child: Row(
                      children: [
                        //User's Profile Image
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: SizedBox(
                            height: size.height * 0.2,
                            width: size.width * 0.4,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
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
                        ),

                        ///Space
                        const SizedBox(width: 0),
                        ///////User's Name
                        SizedBox(
                            height: size.height * 0.2,
                            width: size.width * 0.4,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ///User Name
                                  Text(
                                    userModal.userName,
                                    style: GoogleFonts.lobster(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                  const SizedBox(height: 5),

                                  ///User Score
                                  Text(
                                    "Quiz Score: 20",
                                    style: AppThemeData.darkText.subtitle1,
                                  )
                                ]))
                      ],
                    ),
                  ),
                ));
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}
