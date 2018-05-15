import 'package:flutter/material.dart';
import 'package:rafroid/Theme.dart' as Theme;
import 'package:rafroid/Routes.dart';

class HomeBar extends StatelessWidget {

  final String title;

  HomeBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery
      .of(context)
      .padding
      .top;

    return new Container(
      padding: new EdgeInsets.only(top: statusbarHeight),
      height: statusbarHeight + Theme.Dimens.barHeight,
      child: new Row(
        children: <Widget>[
          new IconButton(
              onPressed: () => Routes.navigate(context, '/login', true, Transition.exit),
              icon: new Icon(Icons.exit_to_app),
              color: Theme.Colors.barIcon,
          ),
          new Center(
            child: new Text(
              title,
              style: Theme.TextStyles.barTitle,
            ),
          ),
        ],
      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [Theme.Colors.barGradientStart, Theme.Colors.barGradientEnd],
        ),
      ),
    );
  }
}
