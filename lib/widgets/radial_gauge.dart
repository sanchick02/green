import 'package:flutter/material.dart';
import 'package:green/presets/fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RadialGaugeWidget extends StatefulWidget {
  @override
  _RadialGaugeWidgetState createState() => _RadialGaugeWidgetState();
}

class _RadialGaugeWidgetState extends State<RadialGaugeWidget> {
  double _pointerValue = 680;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
              minimum: 0,
              maximum: 1000,
              ranges: <GaugeRange>[
                GaugeRange(
                  startValue: 0,
                  endValue: 680,
                  color: Color(0xffD7E8FF),
                  startWidth: 10,
                  endWidth: 10,
                ),
                GaugeRange(
                  startValue: 680,
                  endValue: 1000,
                  color: Color(0xffBFFFE1),
                  startWidth: 10,
                  endWidth: 10,
                ),
              ],
              pointers: [],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                  widget: Text(
                    '${_pointerValue.toStringAsFixed(0)}/1000',
                    style: AppFonts.largeMediumText,
                  ),
                ),
              ],
              onAxisTapped: (double) {}),
        ],
      ),
    );
  }
}
