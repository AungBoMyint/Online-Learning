import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/application/provider/setting_provider.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/presentation/resuable_widgets/setting/profile_update.dart';

class UpdateProfilePage extends HookConsumerWidget {
  const UpdateProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userModal = BlocProvider.of<AuthBloc>(context).state.userModal;
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(settingProvider);
    final _nameController = TextEditingController()..text = userModal!.userName;
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final GlobalKey _formKey = GlobalKey<FormState>();
    return Scaffold(
      bottomSheet: Center(
        child: SizedBox(
            width: 100,
            height: 100,
            child: ElevatedButton(
              onPressed: () {
                //TODO: Update Profile
              },
              child: Text(
                "Confirm",
                style: AppThemeData.lightText.subtitle1,
              ),
            )),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///User Circle Avatar
                  provider.userImage == null
                      ? CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(userModal.image),
                          foregroundColor: Colors.black.withOpacity(0.6),
                          child: IconButton(
                            onPressed: () => _getPhoto(context, provider),
                            icon: const Icon(FontAwesomeIcons.cameraRetro,
                                color: Colors.white),
                          ),
                        )
                      : CircleAvatar(
                          radius: 100,
                          backgroundImage:
                              FileImage(File(provider.userImage ?? "")),
                          foregroundColor: Colors.black.withOpacity(0.6),
                          child: IconButton(
                            onPressed: () => _getPhoto(context, provider),
                            icon: const Icon(FontAwesomeIcons.cameraRetro,
                                color: Colors.white),
                          ),
                        ),
                  /////Name TextFormField
                  nameUpdate(controller: _nameController, size: size),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Pick Photo
  void _getPhoto(BuildContext context, SettingProvider provider) async {
    final XFile? image =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    provider.addUserImage(image!.path);
  }
}
