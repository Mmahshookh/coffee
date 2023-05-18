import 'package:coffee/constants/const.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ImageAndDetails(),
            kHeight40,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DescriptionSection(),
                kHeight15,
                const SizeSection(),
                kHeight40,
                BottomSection(),
              ],
            ),
          ]),
        ));
  }
}

class ImageAndDetails extends StatelessWidget {
  const ImageAndDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: size.height / 2,
              width: size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/jarek-ceborski-IhqDpFz7I8Q-unsplash.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(35),
                height: 160,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black38,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cappuccino",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        kHeight5,
                        Text(
                          "With Oat Milk",
                          style: TextStyle(fontSize: 17, color: Colors.white70),
                        ),
                        kHeight10,
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("(698)"),
                          ],
                        ),
                      ],
                    ),
                    kWidth40,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 42,
                                width: 40,
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.coffee,
                                      color: Colors.orangeAccent,
                                    ),
                                    Text("Coffee")
                                  ],
                                )),
                            kWidth40,
                            Container(
                                height: 42,
                                width: 40,
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.coffee,
                                      color: Colors.orangeAccent,
                                    ),
                                    Text("Coffee")
                                  ],
                                )),
                          ],
                        ),
                        kHeight10,
                        Container(
                          height: 36,
                          width: 120,
                          color: Colors.black,
                          child: Center(child: Text("Medium Roasted")),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyle(fontSize: 16),
        ),
        kHeight15,
        Text(
          "A Cappuccino is a coffee-based dronk made\n primarily from espresso and milk",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        kHeight15,
      ],
    );
  }
}

class SizeSection extends StatelessWidget {
  const SizeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Size"),
        kHeight15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.orange)),
              child: Center(
                child: Text("S"),
              ),
            ),
            Container(
              height: 35,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.transparent)),
              child: Center(
                child: Text("M"),
              ),
            ),
            Container(
              height: 35,
              width: 90,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.transparent)),
              child: Center(
                child: Text("L"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BottomSection extends StatelessWidget {
  const BottomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Price"),
                Text(
                  "\$4.20",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 60, vertical: 20)),
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)),
                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style: const TextStyle(color: Colors.white),
                ))
          ],
        )
      ],
    );
  }
}
