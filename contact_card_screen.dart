import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactCardScreen extends StatelessWidget {
  const ContactCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FB),
      body: Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                blurRadius: 10,
                offset: const Offset(0, 6),
              ),
            ],
            border: Border.all(color: const Color(0xFFE9FBF0), width: 1),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 👤 Profile Avatar (Emoji with Gradient Circle)
              Container(
                width: 90,
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFFFF9966), Color(0xFFFF5E62)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "🧑‍💼",
                    style: TextStyle(fontSize: 45),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // 🏷️ Name
              Text(
                "David Wilson",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 20),

              // 📞 Contact Info
              _buildContactRow(
                icon: Icons.phone_rounded,
                color: Colors.pinkAccent,
                text: "+1 (555) 123-4567",
              ),
              const SizedBox(height: 10),

              _buildContactRow(
                icon: Icons.email_rounded,
                color: Colors.indigoAccent,
                text: "david.wilson@email.com",
              ),
              const SizedBox(height: 10),

              _buildContactRow(
                icon: Icons.location_on_rounded,
                color: Colors.redAccent,
                text: "123 Main St, City, State",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔧 Helper widget for each contact row
  Widget _buildContactRow({
    required IconData icon,
    required Color color,
    required String text,
  }) {
    return Row(
      children: [
        Icon(icon, color: color, size: 20),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }
}
