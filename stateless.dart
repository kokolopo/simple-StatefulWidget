import 'package:flutter/material.dart';
import 'package:statefull/stateful.dart';
import 'package:statefull/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wellcome to Flutter"),
      ),
      body: ListView(
        children: [
          Image.network(
              'https://picsum.photos/500/300'), //get photo from internet
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).devicePixelRatio * 9),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).devicePixelRatio * 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: semiBold,
                                fontSize: 18),
                          ),
                          Text(
                            'Kandersteg, Switzerland',
                            style: TextStyle(
                                color: secondaryTextColor, fontSize: 16),
                          )
                        ],
                      ),
                      RatingWidget(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconAction(
                          icon: Icon(
                            Icons.call,
                            color: iconActionColor,
                          ),
                          tittle: 'CALL'),
                      IconAction(
                          icon: Icon(Icons.near_me, color: iconActionColor),
                          tittle: 'ROUTE'),
                      IconAction(
                          icon: Icon(Icons.share, color: iconActionColor),
                          tittle: 'SHARE')
                    ],
                  ),
                ),
                Container(
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconAction extends StatelessWidget {
  const IconAction({
    Key? key,
    @required this.icon,
    @required this.tittle,
  }) : super(key: key);

  final Icon? icon;
  final String? tittle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon!,
        Text(
          tittle!,
          style: TextStyle(color: iconActionColor),
        )
      ],
    );
  }
}
