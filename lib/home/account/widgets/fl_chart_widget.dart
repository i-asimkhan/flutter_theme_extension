import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_theme_etension/theme/extensions/app_colors.dart';
import 'package:flutter_theme_etension/theme/extensions/chart_style.dart';

class FLChartWidget extends StatelessWidget {
  const FLChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _LineChart(
      isShowingMainData: context.flChartStyle.isShowingMainData,
    );
  }
}

class _LineChart extends StatelessWidget {
  const _LineChart({required this.isShowingMainData});

  final bool isShowingMainData;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      isShowingMainData
          ? sampleData1(
              borderColor: context.flChartStyle.chartBorderColor,
              toolTipColor: context.flChartStyle.toolTipBgColor,
              color1: context.flChartStyle.chartColor1,
              color2: context.flChartStyle.chartColor2,
              color3: context.flChartStyle.chartColor3,
              minX: context.flChartStyle.minX,
              maxX: context.flChartStyle.maxX,
              minY: context.flChartStyle.minY,
              maxY: context.flChartStyle.maxY,
            )
          : sampleData2(
              borderColor: context.flChartStyle.chartBorderColor,
              color1: context.flChartStyle.chartColor1,
              color2: context.flChartStyle.chartColor2,
              color3: context.flChartStyle.chartColor3,
              minX: context.flChartStyle.minX,
              maxX: context.flChartStyle.maxX,
              maxY: context.flChartStyle.maxY,
              minY: context.flChartStyle.minY,
            ),
      duration: context.flChartStyle.animationDuration,
    );
  }

  LineChartData sampleData1({
    required Color borderColor,
    required Color toolTipColor,
    required Color color1,
    required Color color2,
    required Color color3,
    required double minX,
    required double maxX,
    required double minY,
    required double maxY,
  }) =>
      LineChartData(
        lineTouchData: lineTouchData1(toolTipColor),
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData(borderColor),
        lineBarsData: [
          lineChartBarData1_1(color1),
          // lineChartBarData1_2(color2),
          // lineChartBarData1_3(color3),
        ],
        minX: minX,
        maxX: maxX,
        minY: minY,
        maxY: maxY,
      );

  LineChartData sampleData2({
    required Color borderColor,
    required Color color1,
    required Color color2,
    required Color color3,
    required double minX,
    required double maxX,
    required double minY,
    required double maxY,
  }) =>
      LineChartData(
        lineTouchData: lineTouchData2,
        gridData: gridData,
        titlesData: titlesData2,
        borderData: borderData(borderColor),
        lineBarsData: [
          // lineChartBarData2_1(color1),
          lineChartBarData2_2(color2),
          // lineChartBarData2_3(color3),
        ],
        minX: minX,
        maxX: maxX,
        minY: minY,
        maxY: maxY,
      );

  LineTouchData lineTouchData1(Color color) => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: color.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  LineTouchData get lineTouchData2 => const LineTouchData(
        enabled: false,
      );

  FlTitlesData get titlesData2 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 1:
        text = '1m';
        break;
      case 2:
        text = '2m';
        break;
      case 3:
        text = '3m';
        break;
      case 4:
        text = '5m';
        break;
      case 5:
        text = '6m';
        break;
      default:
        return Container();
    }

    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('JAN', style: style);
        break;
      case 3:
        text = const Text('MAR', style: style);
        break;
      case 6:
        text = const Text('JUN', style: style);
        break;
      case 9:
        text = const Text('SEP', style: style);
        break;
      case 12:
        text = const Text('DEC', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => const FlGridData(show: false);

  FlBorderData borderData(Color color) => FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(color: color.withOpacity(0.2), width: 4),
          left: BorderSide(color: color.withOpacity(0.2), width: 0),
          right: BorderSide(color: color.withOpacity(0.2), width: 0),
          top: BorderSide(color: color.withOpacity(0.2), width: 0),
        ),
      );

  LineChartBarData lineChartBarData1_1(Color color) => LineChartBarData(
        isCurved: true,
        color: color,
        barWidth: 6,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 1.5),
          FlSpot(5, 1.4),
          FlSpot(7, 3.4),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
          FlSpot(13, 1.4),
          FlSpot(13, 1.0),
        ],
      );

  LineChartBarData lineChartBarData1_2(Color color) => LineChartBarData(
        isCurved: true,
        color: color,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
          color: color.withOpacity(0),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData lineChartBarData1_3(Color color) => LineChartBarData(
        isCurved: true,
        color: color,
        barWidth: 8,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 2.8),
          FlSpot(3, 1.9),
          FlSpot(6, 3),
          FlSpot(10, 1.3),
          FlSpot(13, 2.5),
        ],
      );

  LineChartBarData lineChartBarData2_1(Color color) => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        color: color.withOpacity(0.5),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 4),
          FlSpot(5, 1.8),
          FlSpot(7, 5),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
      );

  LineChartBarData lineChartBarData2_2(Color color) => LineChartBarData(
        isCurved: true,
        color: color.withOpacity(0.5),
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: true,
          color: color.withOpacity(0.2),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
      );

  LineChartBarData lineChartBarData2_3(Color color) => LineChartBarData(
        isCurved: true,
        curveSmoothness: 0,
        color: color.withOpacity(0.5),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 3.8),
          FlSpot(3, 1.9),
          FlSpot(6, 5),
          FlSpot(10, 3.3),
          FlSpot(13, 4.5),
        ],
      );
}

class LineChartSample1 extends StatefulWidget {
  const LineChartSample1({super.key});

  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  late bool isShowingMainData;

  @override
  void initState() {
    super.initState();
    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 37,
              ),
              Text(
                'Monthly Sales',
                style: TextStyle(
                  color: context.colors.primary,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 37,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, left: 6),
                  child: _LineChart(isShowingMainData: isShowingMainData),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: context.colors.primary
                  .withOpacity(isShowingMainData ? 1.0 : 0.5),
            ),
            onPressed: () {
              setState(() {
                isShowingMainData = !isShowingMainData;
              });
            },
          )
        ],
      ),
    );
  }
}
