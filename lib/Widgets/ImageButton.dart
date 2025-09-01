import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_pokedex/Helpers/text_styles.dart';

class ImageButton extends StatelessWidget {
  final String title;
  final Color color;
  final Function onTap;
  final String imgUrl;

  ImageButton({
    required this.title,
    required this.color,
    required this.onTap,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () => onTap(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyle.regularBold.copyWith(color: Colors.white),
            ),
            SizedBox(
              width: 50,
              child: Image.asset(
                imgUrl,
                color: Colors.white70,
              ),
            )
          ],
        ),
      ),
    );
  }
}
