import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewExample());
}

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text(
              'List View',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Item ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(width: 80),
                    Image.asset(
                      fit: BoxFit.fill, 
                      'assets/images/image3.png',
                      width: 140,
                      height: 70,
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: count,
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  if (count > 0) {
                    count--;
                  }
                });
              },
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
