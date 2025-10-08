import 'package:flutter/material.dart';
import 'package:student_app/utils/constants/app_colors.dart';

class HomeStatusWidget extends StatelessWidget {
  final String subject;
  final String start;
  final String end;
  final String day;
  final String time;

  const HomeStatusWidget({
    super.key,
    this.subject = "Mathematics",
    this.start = "12:00 PM",
    this.end = "14:00 PM",
    this.day = "April, 08 (today)",
    this.time = "12:00 PM - 14:00 PM",
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      color: AppColors.successBackground,
      elevation: 0.5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row (icon + details + QR)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.check_circle,
                    color: AppColors.success, size: 36),

                const SizedBox(width: 12),

                // Subject + time + date
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subject,
                        style: textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        time,
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        day,
                        style: textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),

                // Divider + QR icon
                Container(
                  height: 70,
                  width: 5,
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(6),
                  child: const Icon(Icons.qr_code_2_rounded, size: 48),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Bottom Row (on-site + remaining time)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "on site",
                  style: textTheme.bodySmall?.copyWith(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  "remaining time (03h 30min)",
                  style: textTheme.bodySmall?.copyWith(
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
