import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//
void showBottomSheetToCheckAnswer({
  required BuildContext context,
  required void Function() callBack,
  required Size size,
}) {
  showModalBottomSheet(
    isDismissible: false,
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    constraints: const BoxConstraints(
      maxHeight: 100,
    ),
    context: context,
    builder: (context) {
      return SizedBox(
        height: 50,
        width: size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue),
          onPressed: () => callBack,
          child: const Text("Submit",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        ),
      );
    },
  );
}

//Show True BottomSheet
void showTrueBottomSheet({
  required BuildContext context,
  required void Function() callBack,
  required Size size,
}) {
  showModalBottomSheet(
    isDismissible: false,
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    constraints: const BoxConstraints(
      maxHeight: 100,
    ),
    context: context,
    builder: (context) {
      return SizedBox(
        height: 50,
        width: size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.green),
          onPressed: callBack,
          child: const Text("Continue",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              )),
        ),
      );
    },
  );
}

//Show Wrong Bottom Sheet
void showWrongBottomSheet({
  required BuildContext context,
  required void Function() callBack,
  required Size size,
}) {
  showModalBottomSheet(
    isDismissible: false,
    elevation: 10,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    ),
    constraints: const BoxConstraints(
      maxHeight: 200,
    ),
    context: context,
    builder: (context) {
      return SizedBox(
          height: 200,
          width: size.width,
          child: Column(
            children: [
              //Wrong Text
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("GIVE IT ANOTHER TRY!.",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
              //Space Between
              const SizedBox(
                height: 10,
              ),

              ///Try Again Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                onPressed: callBack,
                child: const Text("Try Again",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
              ),
            ],
          ));
    },
  );
}
