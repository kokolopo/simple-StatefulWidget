import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int rate = 41;
  bool _isFavorite = true; //false;
  void _changeRating() {
    setState(() {
      _isFavorite = !_isFavorite;
      if (!_isFavorite) {
        rate--;
      } else {
        rate++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _changeRating,
          icon: (_isFavorite)
              ? Icon(Icons.star, color: Colors.red)
              : Icon(
                  Icons.star_border,
                  color: Colors.red,
                ),
        ),
        Text('$rate')
      ],
    );
  }
}
