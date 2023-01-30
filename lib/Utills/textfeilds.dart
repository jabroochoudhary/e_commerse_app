// import 'package:events_delegated_management_system/Utills/Theme/color.dart';

import '/Utills/App%20Theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'App Text/app_text.dart';
import 'App Theme/app_config.dart';

class AppTextFeild {
  searchFeild({
    required BuildContext context,
    required String hintText,
    String? errorMessage,
    FocusNode? focusNode,
    Function? onChange,
    Function? onSearch,
    bool isFocus = false,
    GestureTapCallback? onFilterClick,
    GestureTapCallback? onTextFiledClick,
    initialValue,
    // TextEditingController? textfeildController,
  }) {
    return Material(
      // shadowColor: AppColor.dark.withOpacity(0.5),
      borderRadius: BorderRadius.circular(13),
      child: TextFormField(
        onTap: onTextFiledClick,
        textCapitalization: TextCapitalization.sentences,
        textInputAction: TextInputAction.search,
        keyboardType: TextInputType.text,
        // initialValue: initialValue,
        autofocus: isFocus,
        readOnly: !isFocus,
        textAlignVertical: TextAlignVertical.center,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return errorMessage;
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(13.0),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.background),
            borderRadius: BorderRadius.all(
              Radius.circular(13.0),
            ),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            color: AppColors.blackColor.withOpacity(0.4),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          // alignLabelWithHint: true,
          fillColor: AppColors.background,
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(5, 0, 0, 10),
          prefixIcon: Container(
            width: 45,
            height: 45,
            color: AppColors.transparent,
            child: Icon(
              Icons.search_sharp,
              size: 30,
              color: AppColors.dark.withOpacity(0.5),
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: onFilterClick,
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                right: 10,
              ),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8)),
              child: const Padding(
                padding: EdgeInsets.only(
                  right: 0,
                ),
                child: Icon(
                  Icons.tune_sharp,
                  size: 25,
                  color: AppColors.background,
                ),
              ),
            ),
          ),
        ),

        style: GoogleFonts.poppins(
          color: AppColors.dark,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        cursorColor: AppColors.dark,
        focusNode: focusNode,
        onChanged: (value) {
          // print(value);
          // onChange!(value);
        },
        onEditingComplete: () {
          // onSearch!();
        },
      ),
    );
  }

  simpleFeild({
    required BuildContext context,
    required String hinttext,
    String? lableText,
    bool isShowLable = true,
    TextInputType keyboardType = TextInputType.text,
    String? errorMessage,
    FocusNode? focusNode,
    double tophight = 20.0,
    int? textLength,
    Color faildBackColor = AppColors.transparent,
    String? intValue,
    double borderRadius = 15,
    String imageUrl = "assets/logo/email_logo.png",
    Function? onChange,
    int maxLines = 1,
    bool isUasgeEmail = false,
    bool readOnly = false,
    Function? suffixCallBack,
    Color feildTextColor = AppColors.blackColor,
    Color borderColor = AppColors.transparent,
    Function? customervalidator,
    EdgeInsetsGeometry customContentPadding =
        const EdgeInsets.fromLTRB(0, 0, 0, 0),
    TextEditingController? textfeildController,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: AppColors.background,
      ),
      child: TextFormField(
        textCapitalization: TextCapitalization.sentences,
        keyboardType: keyboardType,
        initialValue: intValue,
        controller: textfeildController,
        textAlignVertical: TextAlignVertical.center,
        maxLength: textLength,
        maxLines: maxLines,
        readOnly: readOnly,
        validator: (value) {
          if (isUasgeEmail) {
            String pattern =
                r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                r"{0,253}[a-zA-Z0-9])?)*$";
            RegExp regex = RegExp(pattern);
            if (value == null || value.isEmpty || !regex.hasMatch(value)) {
              return 'Enter a valid email address';
            }
          } else {
            if (value == null || value.isEmpty) {
              return errorMessage;
            }
          }

          return null;
        },
        decoration: InputDecoration(
          // counterStyle: const TextStyle(color: AppColors.background),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          // isDense: true,
          prefixIcon: Container(
            height: 30,
            width: 30,
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                color: AppColors.dullOrange,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageUrl))),
          ),
          hintText: hinttext,
          hintStyle: GoogleFonts.rajdhani(
            color: feildTextColor,
            fontSize: AppConfig(context).width / 27,
            fontWeight: FontWeight.w500,
          ),
          alignLabelWithHint: true,
          fillColor: faildBackColor,
          filled: true,
          errorStyle: const TextStyle(color: AppColors.blackColor),
          // contentPadding: EdgeInsets.only(left: 5, right: 5),
        ),
        style: GoogleFonts.rajdhani(
          color: feildTextColor,
          fontSize: AppConfig(context).width / 27,
          fontWeight: FontWeight.w500,
        ),
        cursorColor: AppColors.blackColor,
        focusNode: focusNode,
        onChanged: (value) {
          // onChange!(value);
        },
      ),
    );
  }

  passwordFeild({
    required BuildContext context,
    required String hinttext,
    required String lableText,
    TextInputType keyboardType = TextInputType.visiblePassword,
    String? errorMessage,
    FocusNode? focusNode,
    double tophight = 20.0,
    Function? onChange,
    bool isShow = false,
    required VoidCallback suffixCallback,
    TextEditingController? textfeildController,
  }) {
    return Column(
      children: [
        SizedBox(
          height: tophight,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: AppText.text(
            lableText,
            fontsize: AppConfig(context).width / 26,
            fontweight: FontWeight.w800,
            color: AppColors.dullOrange,
            textAlignment: TextAlign.start,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.background,
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: TextFormField(
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.text,
            controller: textfeildController,
            textAlignVertical: TextAlignVertical.center,
            obscureText: !isShow,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return errorMessage;
              }
              return null;
            },
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.background),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.background),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.background),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
              hintText: hinttext,
              hintStyle: GoogleFonts.rajdhani(
                color: AppColors.primaryColor,
                fontSize: AppConfig(context).width / 27,
                fontWeight: FontWeight.w500,
              ),
              alignLabelWithHint: true,
              fillColor: AppColors.transparent,
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(0.0),
                child: IconButton(
                  splashRadius: 25,
                  icon: Icon(
                    isShow ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.primaryColor,
                    size: 18,
                  ),
                  onPressed: () => {suffixCallback()},
                ),
              ),
            ),
            style: GoogleFonts.rajdhani(
              color: AppColors.primaryColor,
              fontSize: AppConfig(context).width / 27,
              fontWeight: FontWeight.w500,
            ),
            cursorColor: AppColors.primaryColor,
            focusNode: focusNode,
            onChanged: (value) {
              onChange!(value);
            },
          ),
        ),
      ],
    );
  }
}
