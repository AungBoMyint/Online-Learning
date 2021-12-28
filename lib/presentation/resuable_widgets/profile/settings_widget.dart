import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/domain/json/user/user.dart';

class SettingsWidget extends StatefulWidget {
  final UserModal? userModal;
  const SettingsWidget({Key? key, required this.userModal}) : super(key: key);

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _userNameController.text = widget.userModal?.userName ?? "Invalid User";
    _emailController.text = widget.userModal?.email ?? "Invalid Email";
    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ExpandableNotifier(
      child: ScrollOnExpand(
        child: ExpansionTile(
          //TItle,under children widget will open when this is tapped.
          title: Row(children: const [
            Icon(FontAwesomeIcons.edit),

            ///Space
            SizedBox(width: 10),
            //////////
            Text("Update Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                )),
          ]),

          ///Expand Chandren Widget
          children: [
            Card(
              child: SizedBox(
                height: size.height * 0.4,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 3; i++) ...[
                        //Text
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              child: Text(
                                  i == 0
                                      ? "Name"
                                      : i == 1
                                          ? "Email"
                                          : "Password",
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  )),
                            ),
                          ),
                        ),

                        ///Change TextField
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: size.width * 0.8,
                            child: TextField(
                              controller: i == 0
                                  ? _userNameController
                                  : i == 1
                                      ? _emailController
                                      : _passwordController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                      //Update Button
                      BlocConsumer<DataBloc, DataState>(
                        builder: (context, state) {
                          if (state.isLoadingUpdateProfile) {
                            return const Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: CircularProgressIndicator(),
                                ));
                          } else {
                            return Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<DataBloc>(context).add(
                                    UpdateUserProfile(
                                      userModal: UserModal(
                                        userId: widget.userModal?.userId ?? "",
                                        userName: _userNameController.text,
                                        email: _emailController.text,
                                        image: widget.userModal?.image ?? "",
                                      ),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    side: const BorderSide(
                                        width: 2, color: Colors.amber),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    )),
                                child: const Text(
                                  "Update",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                        listener: (context, state) {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
