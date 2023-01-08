import 'package:flutter/material.dart';
import 'package:pet_market/utils/app_string.dart';
import 'package:pet_market/utils/constants.dart';
import 'package:pet_market/data/data.dart';
import 'package:pet_market/utils/font_size_manager.dart';
import 'package:pet_market/utils/thems_and_styles.dart';
import 'package:pet_market/utils/values_manager.dart';

import '../components/pet_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.appTitle,
          style: TextStyle(
              fontFamily: Constants.fontFamily, fontSize: FontSizeManger.f30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          // search bar
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * ValuesManger.s0_05,
                vertical: width * ValuesManger.s0_05),
            child: SizedBox(
              height: width * ValuesManger.s0_12,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: AppStrings.searchBarHintText,
                  hintStyle: Config.baseTextStyle.copyWith(
                      fontSize: FontSizeManger.f22,
                      color: Constants.searchHintColor),
                  fillColor: Constants.grey,
                  filled: true,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: width * ValuesManger.s0_08),
                    child: Icon(
                      Icons.search_outlined,
                      color: Constants.searchIconColor,
                      size: width * ValuesManger.s0_07,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(width * ValuesManger.s0_1),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
          // pet list
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: width * ValuesManger.s0_05),
            child: Material(
              color: Constants.grey,
              child: Column(
                children: [
                  SizedBox(
                    height: width * ValuesManger.s0_01,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: petList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PetCard(
                        pet: petList[index],
                        width: width,
                      );
                    },
                  ),
                  SizedBox(
                    height: width * ValuesManger.s0_01,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
