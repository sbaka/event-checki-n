import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EventAnalyticsPage extends StatelessWidget {
  final String eventId;

  const EventAnalyticsPage({
    super.key,
    @PathParam('eventId') required this.eventId,
  });

  @override
  Widget build(BuildContext context) {
    // This would normally come from a bloc
    final eventName = 'Tech Conference 2023';
    final totalAttendees = 500;
    final checkedInCount = 387;
    final checkInRate = 77.4; // percentage
    final checkInsPerHour = [12, 45, 78, 56, 89, 67, 40];
    final categoryData = {
      'VIP': 45,
      'Regular': 300,
      'Speaker': 12,
      'Staff': 30,
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics: $eventName'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              // Refresh analytics data
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Summary cards
            _buildSummarySection(
              totalAttendees: totalAttendees,
              checkedInCount: checkedInCount,
              checkInRate: checkInRate,
            ),
            const SizedBox(height: 24),

            // Check-in rate over time
            _buildSectionTitle('Check-in Rate Over Time'),
            const SizedBox(height: 8),
            _buildCheckInRateChart(checkInsPerHour),
            const SizedBox(height: 24),

            // Attendee categories
            _buildSectionTitle('Attendee Categories'),
            const SizedBox(height: 8),
            _buildCategoriesChart(categoryData),
            const SizedBox(height: 24),

            // Recent check-ins
            _buildSectionTitle('Recent Check-ins'),
            const SizedBox(height: 8),
            _buildRecentCheckInsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSummarySection({
    required int totalAttendees,
    required int checkedInCount,
    required double checkInRate,
  }) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildSummaryCard(
                title: 'Total Attendees',
                value: totalAttendees.toString(),
                icon: Icons.people,
                color: Colors.blue,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildSummaryCard(
                title: 'Checked In',
                value: checkedInCount.toString(),
                icon: Icons.check_circle,
                color: Colors.green,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildSummaryCard(
                title: 'Check-in Rate',
                value: '$checkInRate%',
                icon: Icons.trending_up,
                color: Colors.orange,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildSummaryCard(
                title: 'Remaining',
                value: '${totalAttendees - checkedInCount}',
                icon: Icons.person_outline,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSummaryCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildCheckInRateChart(List<int> checkInsPerHour) {
    // This would normally be a proper chart using fl_chart or charts_flutter
    // For simplicity, we'll use a basic visualization

    final maxValue = checkInsPerHour.reduce((a, b) => a > b ? a : b).toDouble();

    return SizedBox(
      height: 200,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Check-ins per hour',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Y-axis labels
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${maxValue.toInt()}'),
                        Text('${(maxValue / 2).toInt()}'),
                        const Text('0'),
                      ],
                    ),
                    const SizedBox(width: 8),
                    // Bars
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: checkInsPerHour
                            .asMap()
                            .entries
                            .map(
                              (entry) => Tooltip(
                                message: '${entry.value} check-ins',
                                child: Container(
                                  width: 20,
                                  height: (entry.value / maxValue) * 120,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(4),
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              // X-axis labels
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  checkInsPerHour.length,
                  (index) => Text('${index + 9}h'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoriesChart(Map<String, int> categoryData) {
    // This would normally be a proper pie chart
    // For simplicity, we'll use a basic visualization

    final total = categoryData.values.reduce((a, b) => a + b);

    return SizedBox(
      height: 200,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              // Legend
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: categoryData.entries.map((entry) {
                    final percentage =
                        (entry.value / total * 100).toStringAsFixed(1);
                    final color = _getCategoryColor(entry.key);

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: color,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${entry.key}: ${entry.value} ($percentage%)',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),

              // Chart (simplified)
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomPaint(
                    painter: SimplePieChartPainter(categoryData),
                    child: Container(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'VIP':
        return Colors.purple;
      case 'Regular':
        return Colors.blue;
      case 'Speaker':
        return Colors.orange;
      case 'Staff':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  Widget _buildRecentCheckInsList() {
    // This would normally come from a bloc
    final recentCheckIns = [
      _CheckInItem(
          name: 'Jane Smith',
          time: DateTime.now().subtract(const Duration(minutes: 5)),
          category: 'VIP'),
      _CheckInItem(
          name: 'John Doe',
          time: DateTime.now().subtract(const Duration(minutes: 8)),
          category: 'Regular'),
      _CheckInItem(
          name: 'Alice Johnson',
          time: DateTime.now().subtract(const Duration(minutes: 12)),
          category: 'Speaker'),
      _CheckInItem(
          name: 'Bob Brown',
          time: DateTime.now().subtract(const Duration(minutes: 15)),
          category: 'Regular'),
      _CheckInItem(
          name: 'Carol White',
          time: DateTime.now().subtract(const Duration(minutes: 20)),
          category: 'Staff'),
    ];

    return SizedBox(
      height: 300,
      child: Card(
        elevation: 4,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: recentCheckIns.length,
          itemBuilder: (context, index) {
            final checkIn = recentCheckIns[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    _getCategoryColor(checkIn.category).withOpacity(0.2),
                child: Text(
                  checkIn.name.substring(0, 1),
                  style: TextStyle(
                    color: _getCategoryColor(checkIn.category),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(checkIn.name),
              subtitle: Text(checkIn.category),
              trailing: Text(_formatTime(checkIn.time)),
            );
          },
        ),
      ),
    );
  }

  String _formatTime(DateTime time) {
    // This would normally use intl package
    return '${time.hour}:${time.minute.toString().padLeft(2, '0')}';
  }
}

class SimplePieChartPainter extends CustomPainter {
  final Map<String, int> data;

  SimplePieChartPainter(this.data);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width < size.height ? size.width / 2 : size.height / 2;

    double startAngle = 0;
    final total = data.values.reduce((a, b) => a + b);

    data.forEach((category, value) {
      final sweepAngle = value / total * 2 * 3.14159;
      final paint = Paint()
        ..color = _getCategoryColor(category)
        ..style = PaintingStyle.fill;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sweepAngle,
        true,
        paint,
      );

      startAngle += sweepAngle;
    });
  }

  Color _getCategoryColor(String category) {
    switch (category) {
      case 'VIP':
        return Colors.purple;
      case 'Regular':
        return Colors.blue;
      case 'Speaker':
        return Colors.orange;
      case 'Staff':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _CheckInItem {
  final String name;
  final DateTime time;
  final String category;

  _CheckInItem({
    required this.name,
    required this.time,
    required this.category,
  });
}
