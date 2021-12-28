import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckOutNowWidget extends StatelessWidget {
  const CheckOutNowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        color: Colors.blue,
        child: SizedBox(
            height: size.height * 0.25,
            width: size.width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Check Out Now
                ///
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: SizedBox(
                    width: size.width * 0.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ///Title
                        const Text("Find a course you want to learn!",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),

                        ///Space
                        const SizedBox(
                          height: 10,
                        ),

                        ////Check Out Now Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          child: const Text("Check Now",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )),
                        ),

                        ///Space
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                ///////Advertise Image
                SizedBox(
                    width: size.width * 0.4,
                    height: size.height * 0.25,
                    child: SvgPicture.asset(
                      "images/online_learning.svg",
                      fit: BoxFit.cover,
                    )),
              ],
            )));
  }
}
