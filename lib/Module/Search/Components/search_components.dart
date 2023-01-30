import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../Utills/App Button/app_button.dart';
import '../../../Utills/App Text/app_text.dart';
import '../../../Utills/App Theme/AppColors.dart';
import '../../../Utills/App Theme/app_config.dart';

class SearchComponent extends StatefulWidget {
  SearchComponent({Key? key}) : super(key: key);

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  int categorySelect = 0;
  SfRangeValues valuePricing = SfRangeValues(40.0, 200.0);
  SfRangeValues valueDistance = SfRangeValues(0.500, 2.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConfig(context).width,
      height: AppConfig(context).height * 0.80,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: AppColors.dullBackground,
      ),
      padding: EdgeInsets.only(left: 20, right: 10, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    categorySelect = 1;
                    valuePricing = SfRangeValues(40.0, 200.0);
                    valueDistance = SfRangeValues(0.500, 2.0);
                  });
                },
                child: AppText.text(
                  "Clear",
                  fontsize: 16,
                  fontweight: FontWeight.w400,
                  color: AppColors.dullBlackColor,
                ),
              ),
              AppText.text(
                "Filters",
                fontsize: 18,
                fontweight: FontWeight.w500,
                color: AppColors.blackColor,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 182, 182, 182),
                  radius: 14,
                  child: Icon(
                    Icons.close,
                    size: 18,
                    color: AppColors.blackColor,
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            width: AppConfig(context).width,
            height: 0.3,
            color: Color.fromARGB(255, 209, 209, 209),
          ),
          AppText.text(
            "Category",
            fontsize: 20,
            fontweight: FontWeight.w500,
            color: AppColors.blackColor,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  print("Pressed");
                  setState(() {
                    categorySelect = 1;
                  });
                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: categorySelect == 1
                        ? AppColors.primaryColor
                        : AppColors.background,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: AppText.text(
                      "New Arrival",
                      color: categorySelect == 1
                          ? AppColors.background
                          : AppColors.blackColor,
                      fontsize: 16,
                      fontweight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    categorySelect = 2;
                  });
                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: categorySelect == 2
                        ? AppColors.primaryColor
                        : AppColors.background,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: AppText.text(
                      "Top Tranding",
                      color: categorySelect == 2
                          ? AppColors.background
                          : AppColors.blackColor,
                      fontsize: 16,
                      fontweight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    categorySelect = 3;
                  });
                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: categorySelect == 3
                        ? AppColors.primaryColor
                        : AppColors.background,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: AppText.text(
                      "Featured Products",
                      color: categorySelect == 3
                          ? AppColors.background
                          : AppColors.blackColor,
                      fontsize: 16,
                      fontweight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.text(
                "Pricing",
                fontsize: 20,
                fontweight: FontWeight.w500,
                color: AppColors.blackColor,
              ),
              AppText.text("\$" +
                  valuePricing.start.toString().substring(
                      0, valuePricing.start.toString().indexOf('.')) +
                  "-\$" +
                  valuePricing.end
                      .toString()
                      .substring(0, valuePricing.end.toString().indexOf('.')))
            ],
          ),
          SizedBox(
            height: 60,
          ),
          SfRangeSlider(
            min: 0,
            max: 400,
            values: valuePricing,
            // interval: 10,

            shouldAlwaysShowTooltip: true,
            enableTooltip: true,
            tooltipTextFormatterCallback: (actualValue, formattedText) {
              return "\$$formattedText";
            },
            inactiveColor: Color.fromARGB(255, 218, 218, 218),
            onChanged: (SfRangeValues values) {
              setState(() {
                valuePricing = values;
              });
            },
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.text(
                "Distance",
                fontsize: 20,
                fontweight: FontWeight.w500,
                color: AppColors.blackColor,
              ),
              AppText.text(valueDistance.start.toString().substring(
                      0, valueDistance.start.toString().indexOf('.')) +
                  " Km-" +
                  valueDistance.end
                      .toString()
                      .substring(0, valueDistance.end.toString().indexOf('.')) +
                  " Km")
            ],
          ),
          SizedBox(
            height: 60,
          ),
          SfRangeSlider(
            min: 0.100,
            max: 5,
            values: valueDistance,
            shouldAlwaysShowTooltip: true,
            enableTooltip: true,
            tooltipTextFormatterCallback: (actualValue, formattedText) {
              if (actualValue < 0) {
                return "$formattedText Km";
              }
              return "$formattedText Km";
            },
            inactiveColor: Color.fromARGB(255, 218, 218, 218),
            onChanged: (SfRangeValues values) {
              setState(() {
                valueDistance = values;
              });
            },
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Appbutton().primaryButton(
                context: context,
                title: "Apply Filter",
                callback: () {},
                fontsize: 18,
                width: AppConfig(context).width * 0.75,
                fontWeight: FontWeight.w500,
              ),
            ],
          )
        ],
      ),
    );
  }
}
