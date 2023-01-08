import 'package:flutter/material.dart';
import 'package:pet_market/utils/helper_functions.dart';
import 'package:pet_market/utils/thems_and_styles.dart';

import '../utils/app_string.dart';
import '../utils/constants.dart';
import '../data/data.dart';
import '../utils/font_size_manager.dart';
import '../utils/values_manager.dart';

class PetCard extends StatelessWidget {
  const PetCard({Key? key, required this.pet, required this.width})
      : super(key: key);
  final Pet pet;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: width * ValuesManger.s0_01,
          horizontal: width * ValuesManger.s0_02),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(width * ValuesManger.s0_05)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * ValuesManger.s0_05,
              vertical: width * ValuesManger.s0_04),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // TODO add a default image
            Image.network(
              HelperFunctions.getValidGDriveLink(pet.img),
              fit: BoxFit.cover,
              width: width * .3,
              height: width * .25,
            ),
            SizedBox(
              width: width * ValuesManger.s0_05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pet.name,
                  style: Config.baseTextStyle
                      .copyWith(fontSize: FontSizeManger.f22),
                ),
                SizedBox(
                  height: width * ValuesManger.s0_025,
                ),
                Text(
                  pet.type,
                  style: TextStyle(
                      fontFamily: Constants.fontFamily,
                      fontSize: FontSizeManger.f15,
                      color: Constants.searchHintColor),
                ),
                SizedBox(
                  height: width * ValuesManger.s0_045,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.pets_outlined,
                      color: Constants.petLoveColor,
                    ),
                    SizedBox(
                      width: width * ValuesManger.s0_02,
                    ),
                    Text('${AppStrings.petLove} ${pet.loveCount}',
                        style: Config.baseTextStyle.copyWith(
                          color: Constants.petLoveColor,
                          fontSize: FontSizeManger.f15,
                        ))
                  ],
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
