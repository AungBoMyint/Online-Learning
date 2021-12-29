import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:online_learning/application/provider/provider.dart';
import 'package:online_learning/domain/mock/app/color.dart';

class AddContentPage extends ConsumerWidget {
  const AddContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final provider = ref.watch(contentProvider);
    return Scaffold(
        //backgroundColor: HexColor(provider.hexColor ?? ""),
        bottomSheet: SizedBox(
            height: 100,
            child: Row(
              children: [
                //Color Button
                IconButton(
                  onPressed: () {
                    //Show Color Picker
                    showAnimatedDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            backgroundColor: Colors.grey,
                            title: Text("Choose a color!"),
                            content: Wrap(
                              children: PredefindColor.colors.map<Widget>(
                                (color) {
                                  return InkWell(
                                    onTap: () {
                                      provider.changeColor(color);
                                      //Then Pop This Dialog
                                      Navigator.of(context).pop();
                                    },
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor: HexColor(color),
                                    ),
                                  );
                                },
                              ).toList(),
                            ));
                      },
                    );
                  },
                  icon:
                      const Icon(FontAwesomeIcons.palette, color: Colors.black),
                ),
                //Save Text
                TextButton(
                  onPressed: provider.contentText == null ||
                          provider.contentText!.length < 10
                      ? null
                      : () {
                          ///Save LessonImageOr
                          provider.saveContentIntoLessonProvider();

                          ///Then Pop
                          Navigator.of(context).pop();
                        },
                  child: const Text("Save",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                )
              ],
            )),
        body: SafeArea(
          child: TextField(
            maxLines: 30,
            onChanged: (value) => provider.changeContentText(value),
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: "Enter Content Text"),
          ),
        ));
  }
}
