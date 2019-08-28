import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 350.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/chickentikka.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.black,
                        onPressed: () {},
                      ))
                ],
              ),
              SizedBox(height: 20.0),

              // Item name and price
              Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Chicken Tikka Masala',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        '\₹ 350',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              SizedBox(height: 20.0),

              //Item Description
              Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: ItemDescription())
            ],
          )
        ],
      ),
      // Order Button
      bottomNavigationBar: Material(
        elevation: 7.0,
        color: Colors.white,
        child: AddItemButton(),
      ),
    );
  }
}

class ItemImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('asset/images/ChickenTikkaMasala.jpg');
    Image image = Image(
      image: assetImage,
    );
    return Container(
      child: image,
    );
  }
}

class ItemDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Chicken tikka masala is composed of chicken tikka, boneless chunks of chicken marinated in spices and yogurt that are roasted in an oven, served in a creamy curry sauce.",
        style: TextStyle(
            fontSize: 18.0,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            letterSpacing: 1.1),
      ),
    );
  }
}

class AddItemButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 15.0),
      width: 300.0,
      height: 50.0,
      child: RaisedButton(
        color: Color.fromRGBO(161, 221, 112, 1),
        child: Text(
          "ORDER",
          style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: 'Ubuntu',
              fontWeight: FontWeight.w700,
              letterSpacing: 3.0),
        ),
        elevation: 7,
        onPressed: () {
          customizeDialog(context);
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context, String text) {
  var snackBar = SnackBar(
    backgroundColor: Color.fromRGBO(85, 139, 47, 1),
    duration: const Duration(seconds: 1),
    content: Text(
      text,
      style: TextStyle(fontSize: 20.0),
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

void previousScreen(BuildContext context) {
  showSnackBar(context, 'Previous Page');
}

Future<bool> customizeDialog(context) {
  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Center(
                  child: Text(
                    "Customize",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontFamily: "Montserrat",
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                customizeOptions(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FlatButton(
                      color: Color.fromRGBO(161, 221, 112, 1),
                      child: Text(
                        "Apply",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            fontFamily: "Montserrat",
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {}),
                )
              ],
            ),
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          ),
        );
      });
}

Widget customizeOptions() {
  return Container(
    height: 350.0,
    width: 200.0,
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Text("1234568"),
        ],
      ),
    ),
  );
}
