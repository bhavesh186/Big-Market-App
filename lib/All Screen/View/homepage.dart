import 'package:big_market/Common/app_image.dart';
import 'package:big_market/Common/app_text.dart';
import 'package:flutter/material.dart';

import '../../Common/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
              children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery in 15 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'H.No. 2834 Street, 784 Sector, Lud...',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
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
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: 'Search for atta, dal, coke and more',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shop Popular Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.navigate_next,
                          size: 28,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  mainAxisExtent: 110,
                  crossAxisCount: 4,
                  crossAxisSpacing: 15,
                ),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImage.gridviewimage[index],scale: 3,height: 75,),
                        Text(AppText.gridviewtext[index],),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                },
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Fresh', style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),),
                            SizedBox(width: 10,),
                            Text('Fruits', style: TextStyle(
                              fontSize: 22,
                            ),),
                          ],
                        ),
                        Text('Get Upto  30% Off', style: TextStyle(
                          fontSize: 16,

                        ),),
                        ElevatedButton(onPressed: (){}, child: Row(
                          children: [
                            Text('Order Now', style: TextStyle(
                              fontSize: 18,

                            ),),
                            SizedBox(width: 5,),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('Assets/Images/image-removebg-preview (67) 1.png', scale: 3,),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
