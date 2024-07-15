import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> with TickerProviderStateMixin {
  late AnimationController animationcontroller;
  late Animation chartanimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationcontroller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    chartanimation =
        Tween<double>(begin: 0, end: 100).animate(animationcontroller);
    animationcontroller.forward();
    animationcontroller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationcontroller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animationcontroller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animationcontroller,
          builder: (context, child) {
            return PieChart(PieChartData(sections: [
              PieChartSectionData(
                  value: 20, title: '20 %', radius: chartanimation.value),
              PieChartSectionData(
                  value: 20, title: '20 %', radius: chartanimation.value),
              PieChartSectionData(
                  value: 20, title: '20 %', radius: chartanimation.value),
              PieChartSectionData(
                  value: 40, title: '40 %', radius: chartanimation.value),
            ], centerSpaceRadius: chartanimation.value));
          },
        ),
      ),
    );
  }
}
