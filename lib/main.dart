import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  final List<double> yValues = [
    1.3,
    1,
    1.8,
    1.5,
    2.2,
    1.8,
    3,
  ];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // MyHomePage val = new MyHomePage();
  // List<FlSpot> spots =
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chart App"),
      ),
      body: Center(
          child: LineChart(LineChartData(
              lineBarsData: [
            LineChartBarData(
                spots: widget.yValues.asMap().entries.map((e) {
                  return FlSpot(e.key.toDouble(), e.value);
                }).toList(),
                isCurved: true,
                colors: [
                  const Color(0xff23b6e6),
                  const Color(0xff02d39a),
                ]),
          ],
              axisTitleData: FlAxisTitleData(
                  bottomTitle: AxisTitle(
                      showTitle: true,
                      titleText: 'Data',
                      textAlign: TextAlign.center))))),
    );
  }
}
