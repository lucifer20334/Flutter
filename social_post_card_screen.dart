import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialPostCardScreen extends StatelessWidget {
  const SocialPostCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: Center(
        child: Container(
          width: 340,
          height: 350,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                blurRadius: 10,
                offset: const Offset(0, 6),
              ),
            ],
            border: Border.all(color: const Color(0xFFEAFBEF), width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 👤 User Info Row
              Row(
                children: [
                  // Avatar (Emoji Circle)
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFE6A7), Color(0xFFFFB347)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Center(
                      child: Text("👨‍💻", style: TextStyle(fontSize: 28)),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Name and Time
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mike Chen",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "2 hours ago",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // 📝 Post text
              Text(
                "Just finished building my first Flutter app! The widgets system is incredible 🚀",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 16),

              // 📱 Post Image
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: const LinearGradient(
                    colors: [Color(0xFFE0C3FC), Color(0xFF8EC5FC)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "📱",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ❤️ Likes and 💬 Comments Row
              Row(
                children: [
                  // Likes
                  Row(
                    children: [
                      const Icon(Icons.favorite, color: Colors.pinkAccent, size: 20),
                      const SizedBox(width: 5),
                      Text(
                        "24 likes",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),

                  // Comments
                  Row(
                    children: [
                      const Icon(Icons.comment_rounded, color: Colors.grey, size: 20),
                      const SizedBox(width: 5),
                      Text(
                        "8 comments",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
