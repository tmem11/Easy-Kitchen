import 'package:flutter/material.dart';

import '../screens/category_meals_page.dart';
import 'ingredient_image.dart';

class IngredientItem extends StatelessWidget {
  final String id;
  final String title;
  // final Color color;
  final String imageUrl;

  IngredientItem({
    @required this.id,
    @required this.title,
    // @required this.color,
    @required this.imageUrl,

  });

  // void selectCategory(BuildContext context) {
  //   // Navigator.of(context).push(
  //   //   MaterialPageRoute(
  //   //     builder: (_) {
  //   //       return CategoryMealsPage(
  //   //         categoryId: id,
  //   //         categoryTitle: title,
  //   //       );
  //   //     },
  //   //   ),
  //   // );
  //   Navigator.of(context).pushNamed(
  //     CategoryMealsPage.routeName,
  //     arguments: {
  //       'categoryId': id,
  //       'categoryTitle': title,
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () => selectCategory(context),
        child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
    ),
    elevation: 5,
    margin: EdgeInsets.all(10),
      child:
      Column(
        children: <Widget>[
          IngredientImage(
            imageUrl: imageUrl,
            title: title,
          ),

        ],
      ),
        ),
    );
  }
}
