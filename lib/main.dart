import 'package:flutter/material.dart';
import 'package:mywidgets/animate.dart';
import 'package:mywidgets/chart.dart';
import 'package:mywidgets/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => change(),
      child: MaterialApp(
        home: homepage(),
      ),
    );
  }
}

class change extends ChangeNotifier {
  int counter = 0;
  void increase() {
    counter++;
    notifyListeners();
  }

  void decrease() {
    counter--;
    notifyListeners();
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<change>(
      builder: (context, provider, child) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height/8,
                width: size.width/2,
                child: Text(
                  'counter',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      provider.decrease();
                    },
                    child: CircleAvatar(
                      child: Icon(
                        Icons.remove,
                        size: 50,
                        color: Colors.red,
                      ),
                      radius: 80,
                    ),
                  ),
                  Text(
                    provider.counter.toString(),
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  InkWell(
                    onTap: () {
                      provider.increase();
                    },
                    child: CircleAvatar(
                      child: Icon(
                        Icons.add,
                        size: 50,
                        color: Colors.red,
                      ),
                      radius: 80,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
