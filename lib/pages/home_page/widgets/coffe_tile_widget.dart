import 'package:coffee/pages/home_page/widgets/coffee_detail_page.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String image;
  final String coffeeName;
  final String subtitleCoffeeName;
  final String price;
  const CoffeeTile(
      {Key? key,
      required this.image,
      required this.coffeeName,
      required this.subtitleCoffeeName,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage()));
                      },
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                        height: 160,
                        width: 180,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 27,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20))),
                        child: Center(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                            label: Text(
                              "4.5",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitleCoffeeName,
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 20),
                  child: Row(
                    children: [
                      Text(
                        "\$ ",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
