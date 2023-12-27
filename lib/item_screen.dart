import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  bool isFavorite = false;
  double price = 8.99;
  int order = 01;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
          ),
        ),
        title: Text(
          "Chicken Burger",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors
                    .red, // You can change the color as per your preference.
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'Mixed Pizza with beef, chilli and Cheese',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Color(0xFFFF2F08),
                ),
                SizedBox(width: 2),
                Text(
                  '4.7',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Image.asset(
                'assets/Pizza.png',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Calories',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '120',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black54,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Volume',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '12 inch',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  width: 2,
                  color: Colors.black54,
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Distance',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '1 KM',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Delivery',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Express',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      'Price',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '\$$price',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFFF2F08),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Order',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 16
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              order = order + 1;
                              price = price * order;
                            });
                          },
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Colors.black45,
                          ),
                        ),
                        Text(
                          order.toString(),
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFFFF2F08),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              order = order - 1;
                              price = price * order;
                            });
                          },
                          icon: Icon(
                            CupertinoIcons.minus_circle,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){},
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          padding: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Color(0xFFFF2F08),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Add to Cart',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(width: 10,),
              Icon(Icons.add,color: Colors.white,size: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
