import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutterappdemocode/pages/categories.dart';
import 'package:flutterappdemocode/pages/favoutite_articles.dart';
import 'package:flutterappdemocode/pages/link.dart';
import 'package:flutterappdemocode/pages/settings.dart';

import '../main.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  Widget buildListTile(String title, IconData icon, Function onTap) {
    return Container(
      height: 35,
      width: double.infinity,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildListTile(
                'الرئيسية',
                FluentSystemIcons.ic_fluent_home_regular,
                () {
                  Navigator.of(context)
                      .pushReplacementNamed(MyHomePage.routeName);
                },
              ),
              buildListTile(
                'أخبار الجالية',
                FluentSystemIcons.ic_fluent_news_regular,
                () {
                  Navigator.of(context).pushReplacementNamed(MyHomePage.routeName);
                },
              ),
              buildListTile(
                'أخبار الهجرة أوروبا',
                FluentSystemIcons.ic_fluent_airplane_regular,
                () {
                  Navigator.of(context)
                      .pushReplacementNamed(MyHomePage.routeName);

                },
              ),
              buildListTile(
                'استشارات و قوانين',
                FluentSystemIcons.ic_fluent_book_formula_logical_regular,
                () {
                  Navigator.of(context)
                      .pushReplacementNamed(MyHomePage.routeName);
                },
              ),
              buildListTile(
                'اقتصاد البيع والشراء',
                FluentSystemIcons.ic_fluent_book_formula_financial_regular,
                () {
                  Navigator.of(context)
                      .pushReplacementNamed(MyHomePage.routeName);
                },
              ),
              buildListTile(
                'مع الجالية حوادث',
                FluentSystemIcons.ic_fluent_briefcase_regular,
                () {
                  Navigator.of(context)
                      .pushReplacementNamed(MyHomePage.routeName);
                },
              ),
              buildListTile(
                'التفضيلات',
                FluentSystemIcons.ic_fluent_favorites_regular,
                () {
                  Navigator.of(context)
                      .pushReplacementNamed(FavouriteArticles.routeName);
                },
              ),
              buildListTile(
                'الأقسام',
                FluentSystemIcons.ic_fluent_group_regular,
                () {
                  Navigator.of(context)
                      .pushReplacementNamed(Categories.routeName);
                },
              ),
              buildListTile(
                'الاعدادات',
                FluentSystemIcons.ic_fluent_settings_regular,
                () {
                  Navigator.of(context)
                      .pushReplacementNamed(Settings.routeName);
                },
              ),
              buildListTile(
                'اسألأ الجالية',
                FluentSystemIcons.ic_fluent_notebook_question_mark_regular,
                () {
                  Navigator.of(context).pushReplacementNamed(MyLink.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
