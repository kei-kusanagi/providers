import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.watch<CounterProvider>().counter_provider.toString(),
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
