import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/application/provider/update_profile.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/presentation/resuable_widgets/setting/profile_update.dart';

class UpdateProfilePage extends ConsumerStatefulWidget {
  const UpdateProfilePage({Key? key}) : super(key: key);

  @override
  _UpdateProfilePageState createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends ConsumerState<UpdateProfilePage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    final userModal = BlocProvider.of<AuthBloc>(context).state.userModal;
    _nameController.text = userModal!.userName ?? "";
    _emailController.text = userModal.email ?? "";
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final userModal = BlocProvider.of<AuthBloc>(context).state.userModal;

    final provider = ref.watch(updateProfileProvider);
    return BlocListener<DataBloc, DataState>(
      child: Scaffold(
        body: SafeArea(
          child: Form(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Space
                    const SizedBox(height: 20),
                    Stack(
                      children: [
                        ///User Circle Avatar
                        provider.userImage == null
                            ? CircleAvatar(
                                radius: 100,
                                backgroundImage: NetworkImage(userModal!.image),
                              )
                            : CircleAvatar(
                                radius: 100,
                                backgroundImage:
                                    FileImage(File(provider.userImage ?? "")),
                              ),
                        CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              onPressed: () => _getPhoto(context, provider),
                              icon: const Icon(
                                FontAwesomeIcons.cameraRetro,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    ///Space
                    const SizedBox(height: 20),
                    /////Name TextFormField
                    nameUpdate(controller: _nameController, size: size),
                    //Space Between
                    const SizedBox(height: 10),
                    emailUpdate(controller: _emailController, size: size),
                    //Space
                    const SizedBox(height: 10),
                    passwordUpdate(controller: _passwordController, size: size),
                    //Space
                    const SizedBox(height: 20),
                    //Confirm Button
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          //Update Profile into Firebase
                          BlocProvider.of<DataBloc>(context).add(
                            UpdateUserProfile(
                              userModal: userModal!.copyWith(
                                userName: _nameController.text,
                                email: _emailController.text,
                                image: provider.userImage ?? userModal.image,
                              ),
                              password: _passwordController.text,
                            ),
                          );
                          //Navigate Back
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Confirm",
                            style: AppThemeData.lightText.headline1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      listener: (context, state) {
        //TODO: Do Something
      },
    );
  }

  //Pick Photo
  void _getPhoto(BuildContext context, UpdateProfileProvider provider) async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    provider.addUserImage(image!.path);
  }
}
