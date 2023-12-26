import 'package:flutter/material.dart';
import 'package:groomely/src/constants/colors.dart';
import 'package:groomely/src/features/app_home/presentation/home_view/widgets/major_category_button.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 106.0,
      padding: const EdgeInsets.symmetric(
        vertical: 24.0,
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 32.0,
        ),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Center(
            child: Text(
              'Categories',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontSize: 24.0,
                    letterSpacing: 1.0,
                    color: colorPrimaryBlack,
                  ),
            ),
          ),
          const SizedBox(
            width: 28.0,
          ),
          const MajorCategoryButton(
            iconUrl: 'assets/icons/category_men.svg',
            label: 'Men',
            isSelected: false,
          ),
          const SizedBox(
            width: 14.0,
          ),
          const MajorCategoryButton(
            iconUrl: 'assets/icons/category_women.svg',
            label: 'Women',
            isSelected: true,
          ),
        ],
      ),
    );
  }
}
