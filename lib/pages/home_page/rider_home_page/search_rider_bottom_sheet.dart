import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malawi_ride_share_app/shared/widgets/app_text_field.dart';

void SearchRiderBottomSheet({required BuildContext context}) {
  showModalBottomSheet(
      showDragHandle: true,
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      builder: (BuildContext context) {
        return FractionallySizedBox(
          widthFactor: 1,
          heightFactor: 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: context.pop, child: Icon(Icons.arrow_back)),
                      Text('Plan your Rider'),
                      SizedBox()
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                LocationSelection()
              ],
            ),
          ),
        );
      });
}

class LocationSelection extends StatelessWidget {
  const LocationSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFieldWidget(hintText: 'Current location'),
        AppTextFieldWidget(hintText: 'Where to ?')
      ],
    );
  }
}
