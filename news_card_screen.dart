import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsCardScreen extends StatelessWidget {
  const NewsCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: Center(
        child: Container(
          width: 340,
          height: 200,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
            border: Border.all(color: const Color(0xFFFFEAF3), width: 1),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 📰 Icon container
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFF6CAB), Color(0xFFFF92A5)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: const Center(
                  child: Icon(
                    Icons.article_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // 🧾 Text section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 🏷️ Headline
                    Text(
                      "Flutter 4.0 Released with Amazing Features",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 6),

                    // 🧠 Short description
                    Text(
                      "Google announces the latest version of Flutter with improved performance...",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        color: Colors.grey[700],
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 10),

                    // 🕓 Source and time
                    Text(
                      "TechNews • 2 hours ago",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
