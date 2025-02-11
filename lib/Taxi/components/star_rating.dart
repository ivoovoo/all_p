import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarRating extends StatelessWidget {
  final double rating; // Рейтинг от 0 до 5
  final double size;

  StarRating({
    required this.rating,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    // Количество заполненных и пустых звезд
    int fullStars = rating.floor();
    bool hasHalfStar = rating - fullStars >= 0.5;
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Заполненные звезды
        for (int i = 0; i < fullStars; i++)
          SvgPicture.asset(
            'assets/star-svgrepo-com.svg',
            color: Colors.amber,
            width: size,
          ),
        // Полузвезда
        if (hasHalfStar)
          SvgPicture.asset(
            'assets/star-svgrepo-com-gg.svg',
            color: Colors.amber,
            width: size,
          ),
        // Пустые звезды
        for (int i = 0; i < emptyStars; i++)
          SvgPicture.asset(
            'assets/star-svgrepo-com-пустая.svg',
            color: Colors.amber,
            width: size,
          ),
      ],
    );
  }
}
