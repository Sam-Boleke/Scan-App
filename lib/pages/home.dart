import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 100,
        title: const Center(
            child: Text(
          'Overview Info',
        )),
      ),
      body: const ScanView(),
    );
  }
}

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.amber,
                child: Text(
                  "65 230",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Total Number of \nRegistered People",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.blue,
                child: Text(
                  "8 642",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Total Number of \nChecked in People",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.pink,
                child: Text(
                  "64 468",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Outstanding People",
                style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
