import 'package:flutter/material.dart';


import '../../Utils/constant.dart';
import '../../widgets.dart';
import '../FAQ.dart';
import '../register_screen.dart';
import 'Drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

final _scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeState extends State<Home> {
  double _value = 100;

  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      drawer: Menu(),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/bgimage.png"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(builder: (BuildContext context) {
                        return IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 25,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context)
                              .openAppDrawerTooltip,
                        );
                      }),
                      Text(
                        "MyCash",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => FAQ()));
                          },
                          child: Icon(
                            Icons.help,
                            size: 25,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: kprimayColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Maximum Loan Amount",
                              style: TextStyle(
                                  color: primayColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "100,000 PKR",
                              style: TextStyle(
                                  color: primayColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900),
                            ),

                            Text(
                              "Loan Amount",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              " ${_value}PKR",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Slider(
                                  min: 0.0,
                                  max: 1000.0,
                                  inactiveColor: Colors.grey,
                                  activeColor: primayColor,
                                  value: _value,
                                  divisions: 100,
                                  label: '${_value.round()}',
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "1000 PKR",
                                      style: TextStyle(
                                          color: primayColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      "100000 PKR",
                                      style: TextStyle(
                                          color: primayColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            Text(
                              "Loan Duration",
                              style: TextStyle(
                                  color: primayColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),

//  days Buttom

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                    onPressed: () {},
                                    child: Text(
                                      "91 Days",
                                      style: TextStyle(color: Colors.black),
                                    )),
                                OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        _hasBeenPressed = !_hasBeenPressed;
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      primary: Colors.white,
                                      backgroundColor: _hasBeenPressed
                                          ? Colors.white
                                          : primayColor,
                                    ),
                                    child: Text("128 Days")),
                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "210 Days",
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (Context) => RegisterScreen()));
                  },
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.70,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          gradient: LinearGradient(colors: [
                            primayColor,
                            primayColor,
                          ]),
                        ),
                        child: Text("Apply",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 18.0))),
                  ),
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12),
                            ),
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.50,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: kprimayColor,
                                  ),
                                  Text(
                                    "Home",
                                    style: TextStyle(color: kprimayColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (Context) => RegisterScreen()));
                            },
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.account_circle_outlined),
                                    Text("My Account")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ])),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
