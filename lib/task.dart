import 'package:flutter/material.dart';

class TASK extends StatelessWidget {
  const TASK({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.red,
          child: Center(
            child: Container(
              height: 380,
              width: 380,
              color: Colors.yellow,
              child: Center(
                child: Container(
                  height: 370,
                  width: 370,
                  color: Colors.green,
                  child: Center(
                    child: Container(
                      height: 360,
                      width: 360,
                      color: Colors.purple,
                      child: Center(
                        child: Container(
                          height: 350,
                          width: 350,
                          color: Colors.pink,
                          child: Center(
                            child: Container(
                              height: 340,
                              width: 340,
                              color: Colors.cyan,
                              child: Center(
                                child: Container(
                                  height: 330,
                                  width: 330,
                                  color: Colors.blue,
                                  child: Center(
                                    child: Container(
                                      height: 320,
                                      width: 320,
                                      color: Colors.black87,
                                      child: Center(
                                        child: Container(
                                          height: 310,
                                          width: 310,
                                          color: Colors.grey,
                                          child: Center(
                                            child: Container(
                                              height: 300,
                                              width: 300,
                                              color: Colors.lightGreenAccent,
                                              child: Center(
                                                child: Container(
                                                  height: 290,
                                                  width: 290,
                                                  color: Colors.indigo,
                                                  child: Center(
                                                    child: Container(
                                                      height: 280,
                                                      width: 280,
                                                      color: Colors.tealAccent,
                                                      child: Center(
                                                        child: Container(
                                                          height: 270,
                                                          width: 270,
                                                          color:
                                                              Colors.pinkAccent,
                                                              child: Image.network("https://images.pexels.com/photos/1535907/pexels-photo-1535907.jpeg?auto=compress&cs=tinysrgb&w=600",fit: BoxFit.fill,),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
