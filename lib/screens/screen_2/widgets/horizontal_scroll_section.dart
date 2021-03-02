import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../../../constant/colors.dart';
import '../../../providers/horizontal_items.dart';

import 'horizontal_card.dart';

class HorizontalScrollSection extends StatelessWidget {
  const HorizontalScrollSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HorizontalItemsProvider>(
      builder: (context, horizontalValueProvider, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 0,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Row(
                children: [
                  Text(
                    'Section 1 (${horizontalValueProvider.itemsCount})',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: ProjectColor.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 10),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: horizontalValueProvider.itemsCount,
                itemBuilder: (context, index) {
                  return HorizontalCard(
                    text: horizontalValueProvider.generateItemAt(index),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
