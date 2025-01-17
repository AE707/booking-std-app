import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:booking_std/ui/widgets/widgets.dart';
import 'package:booking_std/ui/widgets/quantityindicator.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Shopping Cart",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (ctx, i) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
                    height: MediaQuery.of(context).size.height / 5,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          left: 0,
                          bottom: 0,
                          right: 7,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[200],
                                  blurRadius: 3.0,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Image.network(
                                      "https://ak0.scstatic.net/1/bigimg-cdn1-cont12.sweetcouch.com/149725972559962841-modern-loveseat-sofa-tufted-back-tapered.png"),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "Gummy Sofa",
                                          style:
                                              Theme.of(context).textTheme.title,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              height: 9,
                                              width: 9,
                                              decoration: BoxDecoration(
                                                color: Colors.greenAccent,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Green",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .overline,
                                            )
                                          ],
                                        ),
                                        Text(
                                          "\$ 299",
                                          style: Theme.of(context)
                                              .textTheme
                                              .title
                                              .apply(fontWeightDelta: 2),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.bottomRight,
                                    height: double.infinity,
                                    child: QuantityIndicator(),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 17,
                          right: 0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(3.0),
                              color: Colors.cyan,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 9.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Total Price: ",
                  style: TextStyle(fontSize: 19, color: Colors.grey),
                ),
                Text(
                  "\$1921",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ],
            ),
            FractionallySizedBox(
              widthFactor: 2 / 3,
              child: RaisedButton(
                child: Text(
                  "Confirm Payment",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.cyan,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
