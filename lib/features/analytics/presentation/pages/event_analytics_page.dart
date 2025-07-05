import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:event_check_in/core/di/injection.dart';
import 'package:event_check_in/features/analytics/domain/usecases/get_event_analytics_usecase.dart';
import 'package:event_check_in/features/analytics/domain/entities/event_analytics.dart';

@RoutePage()
class EventAnalyticsPage extends StatefulWidget {
  final String eventId;

  const EventAnalyticsPage({
    super.key,
    @PathParam('eventId') required this.eventId,
  });

  @override
  State<EventAnalyticsPage> createState() => _EventAnalyticsPageState();
}

class _EventAnalyticsPageState extends State<EventAnalyticsPage> {
  EventAnalytics? _analytics;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadAnalytics();
  }

  Future<void> _loadAnalytics() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final useCase = getIt<GetEventAnalyticsUseCase>();
      final result = await useCase(widget.eventId);

      result.fold(
        (failure) {
          setState(() {
            _error = failure.message;
            _isLoading = false;
          });
        },
        (analytics) {
          setState(() {
            _analytics = analytics;
            _isLoading = false;
          });
        },
      );
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('Analytics')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_error != null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Analytics')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Error: $_error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _loadAnalytics,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    final analytics = _analytics!;

    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics: ${analytics.eventName}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadAnalytics,
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
              totalAttendees: analytics.totalAttendees,
              checkedInCount: analytics.checkedInCount,
              checkInRate: analytics.checkInRate,
            ),
            const SizedBox(height: 24),

            // Check-in rate over time
            _buildSectionTitle('Check-in Rate Over Time'),
            const SizedBox(height: 8),
            _buildCheckInRateChart(analytics.checkInsByHour),
            const SizedBox(height: 24),

            // Attendee categories
            _buildSectionTitle('Ticket Type Distribution'),
            const SizedBox(height: 8),
            _buildCategoriesChart(analytics.checkInsByTicketType),
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

  Widget _buildCheckInRateChart(Map<String, int> checkInsByHour) {
    // This would normally be a proper chart using fl_chart or charts_flutter
    // For simplicity, we'll use a basic visualization

    if (checkInsByHour.isEmpty) {
      return const Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('No check-in data available'),
        ),
      );
    }

    final values = checkInsByHour.values.toList();
    final maxValue = values.reduce((a, b) => a > b ? a : b).toDouble();

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
                        children: checkInsByHour
                            .entries
                            .map(
                              (entry) => Tooltip(
                                message: '${entry.key}: ${entry.value} check-ins',
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
                children: checkInsByHour.keys
                    .map((hour) => Text(hour))
                    .toList(),
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
