import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  final String? text;
  final String headtext;
  const CommonAppBar({super.key, this.text, required this.headtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xff971DE2),
          // Color(0xffD9D9D9),
          Color(0xffFFE86D),
        ],
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(headtext,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //
                //     Text(
                //       'H.No. 2834 Street, 784 Sector, Lud...',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.w400,
                //         fontSize: 15,
                //       ),
                //     ),
                //   ],
                // ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 62),
            child: Text(
              text ?? "",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
