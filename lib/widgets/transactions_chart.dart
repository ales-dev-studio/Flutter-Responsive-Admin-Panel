import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel/theme/dimens.dart';

import '../theme/colors.dart';
import 'data_source_viewer.dart';

class TransactionsChart extends StatefulWidget {
  const TransactionsChart({super.key});

  @override
  State<StatefulWidget> createState() => _TransactionsChartState();
}

class _TransactionsChartState extends State<TransactionsChart> {
  final double width = 7;
  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 8, 7);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 16, 15);
    final barGroup4 = makeGroupData(3, 19, 16);
    final barGroup5 = makeGroupData(4, 17, 14);
    final barGroup6 = makeGroupData(5, 15, 16);
    final barGroup7 = makeGroupData(6, 10, 12);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];
    rawBarGroups = items;
    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.padding),
        child: Column(
          spacing: Dimens.largePadding,
          children: <Widget>[
            Expanded(
              child: BarChart(
                BarChartData(
                  maxY: 21,
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: bottomTitles,
                        reservedSize: 42,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40,
                        interval: 1,
                        getTitlesWidget: leftTitles,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: showingBarGroups,
                  gridData: const FlGridData(
                    drawVerticalLine: false,
                    drawHorizontalLine: true,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DataSourceViewer(
                  title: 'Website',
                  color: AppColors.primaryColor,
                ),
                DataSourceViewer(
                  title: 'Application',
                  color: Color(0xffEADDFF),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    String text;
    if (value == 0) {
      text = '0';
    } else if (value == 5) {
      text = '200';
    } else if (value == 10) {
      text = '400';
    } else if (value == 15) {
      text = '600';
    } else if (value == 20) {
      text = '800';
    } else {
      return Container();
    }
    return SideTitleWidget(meta: meta, space: 10, child: Text(text));
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Mn', 'Te', 'Wd', 'Tu', 'Fr', 'St', 'Su'];

    final Widget text = Text(titles[value.toInt()]);

    return SideTitleWidget(
      meta: meta,
      space: 16, //margin top
      child: text,
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(toY: y1, color: Colors.deepPurple, width: width),
        BarChartRodData(toY: y2, color: Color(0xffEADDFF), width: width),
      ],
    );
  }
}
