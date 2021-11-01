import 'package:flutter/material.dart';
import 'ekinchibarak.dart';

// ignore: camel_case_types
class birinchibarak extends StatefulWidget {
  const birinchibarak({Key key}) : super(key: key);

  @override
  _birinchibarakState createState() => _birinchibarakState();
}

// ignore: camel_case_types
class _birinchibarakState extends State<birinchibarak> {
  int _san = 0;
  void _koshuu() {
    setState(() {
      _san++;
    });
  }

  void _kemituu() {
    setState(() {
      _san--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                "Tapshyrma 01",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ekinchibarak(
                            san: _san,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 28.0,
                        right: 28.0,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff46F3F3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'SAN: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('$_san'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: _kemituu,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff005EA6),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 80,
                          // color: Color(0xff46F3F3), //decoration bolgonu uchun bul jerde tus bolbosh kerek
                          child: const Center(
                            child: Icon(
                              Icons.remove,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      GestureDetector(
                        onTap: _koshuu,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xff005EA6),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 50,
                          width: 80,
                          child: const Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
