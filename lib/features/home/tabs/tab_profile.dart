import 'package:awesome_app/shared/constants/assets.dart';
import 'package:awesome_app/shared/constants/colors.dart';
import 'package:awesome_app/shared/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TabProfile extends StatelessWidget {
  TabProfile({Key? key}) : super(key: key);

  Widget getItem(String name, String icon) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  SizedBox(width: 16),
                  SvgPicture.asset(icon,
                      width: 20,
                      height: 20,
                      color: ColorConstants.primaryColor),
                  SizedBox(width: 16),
                  Text(
                    name,
                    style: TextStyles.subtitlePoppins.copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.keyboard_arrow_right,
                color: ColorConstants.primaryColor,
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: Divider(
            color: hexToColor('#7f8c8d'),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    Assets.background,
                    height: height * 0.3,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(height: height * 0.225),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(width: 20.w),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: CircleAvatar(
                                backgroundImage: AssetImage(Assets.iconBagas),
                                radius: width * 0.15),
                          ),
                          SizedBox(width: 20.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Bagas Dewanggono",
                                  style: TextStyles.titlePoppins
                                      .copyWith(fontWeight: FontWeight.w500)),
                              SizedBox(height: 10),
                              Text("Mobile Application Developer",
                                  style: TextStyles.subtitlePoppins)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 24.h),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
