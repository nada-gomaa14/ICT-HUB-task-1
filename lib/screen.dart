import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String name = '';
  String job = '';
  String email = '';
  String phone = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text(
            'Profile Card',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
                onPressed: () {
                  name = '';
                  job = '';
                  email = '';
                  phone = '';
                  setState(() {});
                },
              ),
            )
          ],
        ),
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                width: 400,
                height: 600,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                              'https://cdn-icons-gif.flaticon.com/17905/17905521.gif',
                              width: 150,
                              height: 150
                          )
                      ),
                      Text(
                        '$name',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        '$job',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '$email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '$phone',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ]
                )
            )
        ),
        floatingActionButton: FloatingActionButton(
          child: Text(
            '+',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),
          ),
          backgroundColor: Colors.lightGreen,
          onPressed: () {
            name = 'Nada Gomaa';
            job = 'Mobile Developer';
            email = 'email@gmail.com';
            phone = '+20 1211111111';
            setState(() {});
          },
        )
    );
  }
}
