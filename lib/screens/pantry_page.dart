import 'package:flutter/material.dart';
import 'package:meals_app_flutter/widgets/Ingredient_Item.dart';

import '../data/dummy_data.dart';
import '../widgets/category_item.dart';

class PantryPage extends StatelessWidget {
  final String title = 'Make My Meal';

  // CategoriesPage({
  //   this.title,
  // });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ListView.builder(
        // padding: EdgeInsets.all(15),
        itemBuilder: (ctx, index) {
          final ingredient = DUMMY_INGREDIENTS[index];
          return IngredientItem(
            id: ingredient.id,
            title: ingredient.title,
            imageUrl: ingredient.imageUrl,
          );
        },
        itemCount: DUMMY_INGREDIENTS.length,


      ),

    );
    //   GridView(
    //
    //   children:DUMMY_INGREDIENTS
    //       .map(
    //         (catData) => IngredientItem(
    //       id: catData.id,
    //       title: catData.title,
    //       imageUrl: catData.imageUrl,
    //     ),
    //   )
    //       .toList(),
    //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
    //     maxCrossAxisExtent: 300,
    //     childAspectRatio: 3 / 2,
    //     crossAxisSpacing: 20,
    //     mainAxisSpacing: 20,
    //
    //   ),
    //
    //   padding: const EdgeInsets.all(20),
    // );
  }
}
