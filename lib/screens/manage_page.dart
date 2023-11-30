import 'package:flutter/material.dart';
import 'package:multiprises_intelligentes/utils.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ManageScreen extends StatelessWidget {
  final List<double> data = [
    1,
    2,
    -6,
    0,
    1,
    -2,
    7,
    -7,
    -4,
    10,
    -7,
    -4,
    10,
    13,
    -6,
    7,
    5,
    1,
    1,
    5,
    3,
  ];
  final List<double> data2 = [
    1,
    2,
    -6,
    0,
    1,
    -2,
    7,
    -7,
    -4,
    10,
    -7,
    -4,
    10,
    13,
    -6,
    7,
    0,
    1,
    -2,
    7,
    -7,
    -4,
    10,
    -7,
    -4,
    10,
    13,
    -6,
    5,
    1,
    1,
    5,
    3,
  ];
  final List<double> data3 = [
    1,
    2,
    -6,
    0,
    1,
    -2,
    7,
    -7,
    -4,
    10,
    -7,
    -6,
    7,
    5,
    1,
    1,
    5,
    3,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              itemManaged(
                'Voltage',
                'Volts',
                data,
                210,
                220,
              ),
              itemManaged(
                'Intensity',
                'Amper',
                data2,
                210,
                220,
              ),
              itemManaged(
                'Power',
                'Watt',
                data3,
                210,
                220,
              ),
              itemManaged(
                'Energy',
                'KWh',
                data2,
                210,
                220,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemManaged(managedItemTitle, managedItemMesure, managedItemData,
      managedItemMin, managedItemMax) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  managedItemTitle,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                Text(
                  managedItemMesure,
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: SfSparkLineChart(
                data: managedItemData,
                color: primaryColor,
                dashArray: [2, 2],
                trackball: SparkChartTrackball(
                  activationMode: SparkChartActivationMode.tap,
                ),
                marker: SparkChartMarker(
                  displayMode: SparkChartMarkerDisplayMode.all,
                ),
                plotBand: SparkChartPlotBand(
                  color: Color.fromARGB(255, 5, 60, 161),
                  start: 5,
                  end: 10,
                ),
                labelDisplayMode: SparkChartLabelDisplayMode.all,
              ),
            ),
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'min : ' +
                      managedItemMin.toString() +
                      ' ' +
                      managedItemMesure,
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
                Text(
                  'max : ' +
                      managedItemMax.toString() +
                      ' ' +
                      managedItemMesure,
                  style: TextStyle(
                    fontSize: 14,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
