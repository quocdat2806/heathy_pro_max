import 'package:flutter/material.dart';
import 'package:healthy_fitness_pro/core/constants/index.dart';
import 'package:healthy_fitness_pro/core/extensions/text_extension.dart';
import 'package:healthy_fitness_pro/shared/widgets/index.dart';

class ResultInfomationScreen extends StatelessWidget {
  const ResultInfomationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      child: Column(
        spacing: AppDimens.defaultSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBMIResult(context),
          _buildBodyCompositionResult(context),
          _buildMetabolismResult(context),
          _buildYourGoalResult(context),
          _buildAdvice(context),
        ],
      ),
    );
  }

  Widget _buildBMIResult(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AppCard(
        child: Column(
          spacing: AppDimens.smallSpace,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('📊 Chỉ số BMI', style: context.body),
            Text("Kết luận : Béo phì", style: context.bodySmall),
            Text("Chỉ số BMI : 30.0", style: context.bodySmall),
          ],
        ),
      ),
    );
  }

  Widget _buildBodyCompositionResult(BuildContext context) {
    return AppCard(
      child: Column(
        spacing: AppDimens.smallSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('🏋️Thành phần cơ thể', style: context.body),
          AppGrid(
            crossAxisCount: 2,
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: AppDimens.defaultSpace,
            crossAxisSpacing: AppDimens.defaultSpace,
            itemHeightFactor: 0.45,
            itemBuilder: (context, index) {
              final items = <({String label, String value})>[
                (label: 'Khối lượng nạc', value: '3.2 kg'),
                (label: 'Khối lượng mỡ', value: '0.8 kg'),
                (label: 'Mỡ hiện tại', value: '20%'),
                (label: 'Đánh giá', value: 'Trung bình'),
              ];
              final item = items[index];
              return _ResultTile(label: item.label, value: item.value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMetabolismResult(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppDimens.smallSpace,
        children: [
          Text('⚡Chuyển hóa', style: context.body),
          AppGrid(
            crossAxisCount: 2,
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: AppDimens.defaultSpace,
            crossAxisSpacing: AppDimens.defaultSpace,
            itemHeightFactor: 0.45,
            itemBuilder: (context, index) {
              final items = <({String label, String value, bool highlighted})>[
                (label: 'BMR', value: '50 kcal', highlighted: false),
                (label: 'TDEE', value: '69 kcal', highlighted: false),
                (label: 'Mục tiêu/ngày', value: '69 kcal', highlighted: true),
                (label: 'Protein khuyên', value: '8g', highlighted: false),
              ];
              final item = items[index];
              return _ResultTile(label: item.label, value: item.value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildYourGoalResult(BuildContext context) {
    return AppCard(
      child: Column(
        spacing: AppDimens.smallSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('🎯 Mục tiêu của bạn', style: context.body),
          AppGrid(
            crossAxisCount: 2,
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: AppDimens.defaultSpace,
            crossAxisSpacing: AppDimens.defaultSpace,
            itemHeightFactor: 0.45,
            itemBuilder: (context, index) {
              final items = <({String label, String value})>[
                (label: 'Cân nặng mục tiêu', value: '4 kg'),
                (label: 'Mỡ mục tiêu', value: '21%'),
                (label: 'Cân thay đổi', value: '0.0 kg'),
                (label: 'Thời gian ước tính', value: 'Đã đạt!'),
              ];
              final item = items[index];
              return _ResultTile(label: item.label, value: item.value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAdvice(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.defaultSpace),
      decoration: BoxDecoration(
        color: AppColorConstant.green50,
        borderRadius: BorderRadius.circular(AppDimens.extraLargeBorderRadius),
        border: Border.all(color: AppColorConstant.green200),
      ),
      child: Column(
        spacing: AppDimens.smallSpace,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '💡 Lời khuyên',
            style: context.body.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green500,
            ),
          ),
          Text(
            '•Ăn đúng TDEE, duy trì lượng protein ổn định',
            style: context.bodySmall,
          ),
          Text(
            '•Tập luyện đều đặn để cải thiện thành phần cơ thể',
            style: context.bodySmall,
          ),
          Text(
            '•Theo dõi cân nặng hàng tuần để điều chỉnh kịp thời',
            style: context.bodySmall,
          ),
          Text(
            '•Theo dõi cân nặng hàng tuần để điều chỉnh kịp thời',
            style: context.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _ResultTile extends StatelessWidget {
  const _ResultTile({required this.label, required this.value, this.border});

  final String label;
  final String value;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColorConstant.green50,
        border: border,
        borderRadius: BorderRadius.circular(AppDimens.largeBorderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: context.caption.copyWith(color: AppColorConstant.green800),
          ),
          Text(
            value,
            textAlign: TextAlign.center,
            style: context.bodySmall.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColorConstant.green900,
            ),
          ),
        ],
      ),
    );
  }
}
