import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../../../constant/colors.dart';
import '../../../providers/vertical_items.dart';
import 'vertical_card.dart';

class VerticalScrollSection extends StatelessWidget {
  const VerticalScrollSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<VerticalItemsProvider>(
      builder: (context, verticalValueProvider, child) {
        return Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Section 2 (${verticalValueProvider.itemsCount})',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: ProjectColor.black,
                    ),
                  ),
                ),
              ],
            ),
            ...List.generate(
              verticalValueProvider.itemsCount,
              (index) => VerticalCard(
                text: verticalValueProvider.generateItemAt(index),
              ),
            )
          ],
        );
      },
    );
  }
}
