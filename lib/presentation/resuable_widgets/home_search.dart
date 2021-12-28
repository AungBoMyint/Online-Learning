import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        // right: 20,
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: size.width * 0.75,
              child: TextFormField(
                decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
              ),
            ),
            //Space
            const SizedBox(width: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.slidersH,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
