import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // --- Định nghĩa màu sắc ---
  final Color darkGreen = const Color(0xFF145330);
  final Color primaryGreen = const Color(0xFF199E47);
  final Color lightGreenBg = const Color(0xFFE6F3EA);
  final Color greyText = const Color(0xFF6B7280);
  final Color orange = const Color(0xFFF5A524);
  final Color orangeBg = const Color(0xFFFCECD5);
  final Color red = const Color(0xFFF31260);
  final Color redBg = const Color(0xFFFCD5E0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 40),
              _buildCircularProgress(),
              const SizedBox(height: 20),
              _buildRemainingCalories(),
              const SizedBox(height: 30),
              _buildMacrosCard(),
              const SizedBox(height: 30),
              Text(
                "BỮA ĂN HÔM NAY",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: darkGreen.withOpacity(0.7),
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              _buildMealCard(
                icon: "🌅",
                title: "Bữa sáng",
                totalKcal: 430,
                items: [
                  {"name": "Yến mạch & chuối", "qty": "1 bát", "kcal": 310},
                  {"name": "Sữa chua Hy Lạp", "qty": "150g", "kcal": 120},
                ],
              ),
              const SizedBox(height: 16),
              _buildMealCard(
                icon: "☀️",
                title: "Bữa trưa",
                totalKcal: 465,
                items: [
                  {"name": "Cơm gạo lứt", "qty": "1 chén", "kcal": 215},
                  {"name": "Ức gà nướng", "qty": "120g", "kcal": 185},
                  {"name": "Rau trộn", "qty": "1 bát", "kcal": 65},
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- Widget: Header ---
  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chào buổi sáng 👋",
              style: TextStyle(
                fontSize: 14,
                color: darkGreen.withOpacity(0.7),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Hôm nay bạn ăn gì?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: darkGreen,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: primaryGreen,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: primaryGreen.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Icon(Icons.eco_outlined, color: Colors.white, size: 24),
        ),
      ],
    );
  }

  // --- Widget: Biểu đồ tròn ---
  Widget _buildCircularProgress() {
    double progress = 1385 / 2293;
    return Center(
      child: SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              value: 1.0,
              strokeWidth: 16,
              color: lightGreenBg,
            ),
            CircularProgressIndicator(
              value: progress,
              strokeWidth: 16,
              color: primaryGreen,
              strokeCap: StrokeCap.round,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ĐÃ ĂN",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: darkGreen.withOpacity(0.7),
                  ),
                ),
                Text(
                  "1385",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    color: darkGreen,
                    height: 1.1,
                  ),
                ),
                Text(
                  "/ 2293 kcal",
                  style: TextStyle(
                    fontSize: 14,
                    color: greyText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // --- Widget: Text Còn lại ---
  Widget _buildRemainingCalories() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: primaryGreen,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          "Còn lại 908 kcal",
          style: TextStyle(
            fontSize: 14,
            color: darkGreen.withOpacity(0.8),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  // --- Widget: Thẻ Macros (Protein, Carbs, Fat) ---
  Widget _buildMacrosCard() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMacroItem("Protein", 92, 140, "g", primaryGreen, lightGreenBg),
          _buildMacroItem("Carbs", 178, 289, "g", orange, orangeBg),
          _buildMacroItem("Fat", 48, 64, "g", red, redBg),
        ],
      ),
    );
  }

  Widget _buildMacroItem(
    String label,
    int current,
    int total,
    String unit,
    Color color,
    Color bgColor,
  ) {
    return Expanded(
      child: Column(
        children: [
          Text(label, style: TextStyle(fontSize: 12, color: greyText)),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: TextStyle(fontFamily: 'Inter', color: darkGreen),
              children: [
                TextSpan(
                  text: "$current",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "/$total$unit",
                  style: TextStyle(fontSize: 14, color: greyText),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: current / total,
                minHeight: 6,
                backgroundColor: bgColor,
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // --- Widget: Thẻ Bữa ăn ---
  Widget _buildMealCard({
    required String icon,
    required String title,
    required int totalKcal,
    required List<Map<String, dynamic>> items,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(icon, style: const TextStyle(fontSize: 20)),
                  const SizedBox(width: 12),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: darkGreen,
                    ),
                  ),
                ],
              ),
              Text(
                "$totalKcal kcal",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryGreen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      item["name"],
                      style: TextStyle(
                        fontSize: 14,
                        color: darkGreen,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      item["qty"],
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 13, color: greyText),
                    ),
                  ),
                  const SizedBox(width: 16),
                  SizedBox(
                    width: 60,
                    child: Text(
                      "${item["kcal"]} kcal",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 14,
                        color: darkGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
