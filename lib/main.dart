import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculator(),
    );
  }
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('BMI Calculator'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.replay_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Age',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Ht(ft)',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Ht(in)',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.male_outlined,
                    size: 30,
                  ),
                ),
                const Text(
                  '|',
                  style: TextStyle(fontSize: 20),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.female_outlined,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 90,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Weight(kg)',
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_right_outlined))
              ],
            ),
            const SizedBox(
              height: 24,
            ),

            SizedBox(
              height: 320,
              child: SfRadialGauge(axes: <RadialAxis>[
                RadialAxis(minimum: 15, maximum: 40, ranges: <GaugeRange>[
                  GaugeRange(startValue: 15, endValue: 18, color: Colors.red),
                  GaugeRange(startValue: 18, endValue: 25, color: Colors.green),
                  GaugeRange(startValue: 25, endValue: 40, color: Colors.lightBlue)
                ], pointers: <GaugePointer>[
                  NeedlePointer(value: 90)
                ], annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                      widget: Container(
                          child: Text('90.0',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold))),
                      angle: 90,
                      positionFactor: 0.5)
                ])
              ]),
            )
          ],
        ),
      ),
    );
  }
}
