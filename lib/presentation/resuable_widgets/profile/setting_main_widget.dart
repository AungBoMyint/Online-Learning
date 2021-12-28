import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/injectable_configuration.dart';
import 'package:online_learning/presentation/resuable_widgets/profile/profile.dart';
import 'package:online_learning/route.dart';

class SettingMainWidget extends StatelessWidget {
  const SettingMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider<DataBloc>(
      create: (_) => getIt<DataBloc>(),
      child: SizedBox(
        height: size.height * 0.6,
        child: ListView(
          primary: false,
          shrinkWrap: true,
          children: [
            BlocConsumer<AuthBloc, AuthState>(
              builder: (context, state) {
                return SettingsWidget(userModal: state.userModal);
              },
              listener: (context, state) {},
            ),
            //Upload Course Button
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    //TODO: Go To Upload Course Page
                    Navigator.of(context)
                        .pushNamed(RouteGenerator.courseUploadPage);
                  },
                  child: Row(
                    children: const [
                      Icon(FontAwesomeIcons.cloudUploadAlt,
                          color: Colors.black),
                      SizedBox(width: 10),
                      Text("Upload A Course!.",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          )),
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
