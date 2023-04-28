import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/pages/page3.dart';

import '../pages/page1.dart';
import '../pages/page2.dart';
import '../pages/page3.dart';
import '../providers/counter_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
        actions: [
          ElevatedButton(
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            child: Text(
                context.watch<CounterProvider>().counter_provider.toString()),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 3',
          ),
        ],
      ),
    );
  }
}
