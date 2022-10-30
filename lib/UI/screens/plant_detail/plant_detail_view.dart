import 'package:flutter/material.dart';
import 'package:plant_app/UI/screens/cart/cart_view.dart';

class PlantDetail extends StatefulWidget {
  PlantDetail({Key? key}) : super(key: key);

  @override
  State<PlantDetail> createState() => _PlantDetailState();
}

class _PlantDetailState extends State<PlantDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffC8E6C9),
        body: Column(
          //main column
          children: [
            // main container for icons and image
            Container(
              height: 350,
              // color: Colors.red,
              color: Color(0xffC8E6C9),
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                //column for icons & image
                children: [
                  Row(
                    //row for icons
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          backgroundColor: Color(0xffEBFDF2),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff184A2C),
                          )),
                      CircleAvatar(
                        backgroundColor: Color(0xff184A2C),
                        child: Icon(
                          Icons.favorite_outline_rounded,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    //container for image
                    // color: Colors.yellow,
                    width: 280,
                    height: 290,
                    child: Image(
                      // height: 120,
                      // width: 100,

                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://gamlaa.com/wp-content/uploads/2014/07/Classi%D1%81-plant-transparent.png'),
                    ),
                  ),
                ],
              ),
            ),
            //container for text area
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),

              // color: Colors.pink,

              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, //main row
                    children: [
                      Container(
                        //container for name and price
                        // color: Colors.orange,
                        width: 170,
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rosemarry',
                              style: TextStyle(
                                color: Color(0xff184A2C),
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '25.00',
                              style: TextStyle(
                                  color: Color(0xff76B536),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff184A2C),
                        ),
                        child: Text(
                          '- 2 +',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    // column for about and text
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About',
                        style: TextStyle(
                          color: Color(0xff184A2C),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'However, they look for huge white flowers and they \nbloom through out the year and a bit more frequently \nin the springtime.This occupied with plants broad, \ndeep green leaves.',
                        style: TextStyle(
                            color: Color(0xff184A2C),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    //row for cart icon & buy now btn
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffEBFDF2),
                        child: Icon(Icons.shopping_cart_outlined,
                            color: Color(0xff184A2C)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyCart()));
                        },
                        child: Container(
                          //container for  buy now text btn
                          alignment: Alignment.center,
                          width: 280,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff184A2C),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'BUY NOW',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
