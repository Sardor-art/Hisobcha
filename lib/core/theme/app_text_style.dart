import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const navBar = TextStyle(
    // fontFamily: 'SFPro',
    fontSize: 10,
    fontWeight: FontWeight.w500,
  );

  static const oldPrice = TextStyle(
    // fontFamily: 'SFPro',
    fontSize: 11,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.lineThrough,
  );

  static const parmError = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.red400,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const addAddressBook = sendSms;
  static const settingPhone = chooseAddress;
  static const branchAddress = chooseAddress;
  static const labelStyles = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray2,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const emptyOrderTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray3,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const orderCreate = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray5,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const sendSms = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const basketItem = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  static const chooseAddress = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.midGrey,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const deliverTime = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  static const edit = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray4,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const tabBarItemTitle = productItem;
  static const orderHistory = productItem;
  static const descriptionItem = productItem;
  static const editAddress = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray4,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const deliveryTimeTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );
  static const productItem = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );
  static const styProductItemQuantity = productItem;

  static const styProductTitle = basketItem;

  static const styCategoryTitle = productItem;

  static const voucher = reSendSms;
  static const orderStatus = reSendSms;
  static const selectTimeTab = categoriesTitle;
  static const timeTab = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray4,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static const reSendSms = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.assets,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );

  static const sale = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.white,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static const categoriesTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
  static const prefixIcon = alternativeMessage;
  static const smsCode = labelText;

  static const labelText = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.black,
  );
  static const applicationDate = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const addressName = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray2,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const unSelectCountry = userPhone;
  static const orderId = userPhone;
  static const productItemPrice = basketStyle;
  static const address = hintSms;
  static const checkQuantity = checkProductName;
  static const mapAddress = tabBarUnselect;
  static const checkPrice = userPhone;
  static const gender = userPhone;
  static const styProductDetailQuantity = userPhone;
  static const filterItem = userPhone;
  static const orderAgainItem = userPhone;
  static const skip = hintText;
  static const boardMessage = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray4,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const forwardArrow = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray5,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const checkInfo = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray2,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const answer = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray5,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const hintSms = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray4,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const countryCode = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.assets,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const hintText = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const userPhone = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const checkProductName = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray2,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const tabBarUnselect = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const tabBarSelect = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.white,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const alternativeMessage = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray5,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const subCategories = productName1;
  static const selectCategory = basketStyle;
  static const unselectCategory = productName1;
  static const basketBtn = productName1;

  static const subCompanyDes = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray4,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static const error = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.red400,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static const productName1 = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  static const ball = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  static const basketStyle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.white,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
  static const detailsBasketStyle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.white,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  static const enterPhoneTitle = profileItem;
  static const companyHistoryName = profileItem;
  static const alternative = profileItem;
  static const deliveryType = profileItem;
  static const deliveryTime = profileItem;
  static const lastAddress = profileItem;
  static const button = count;
  static const country = profileItem;
  static const branch = profileItem;
  static const verification = profileItem;
  static const setting = profileItem;
  static const total = productPrice1;

  static const questions = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const checkProduct = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const filter = profileItem;
  static const langItem = profileItem;

  static const profileItem = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static const styProductPrice = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.midGrey,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const saleProductPrice = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.saleRed,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const productPrice1 = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray2,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const productPromoPrice = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.red,
    fontSize: 15,
    decoration: TextDecoration.lineThrough,
    fontWeight: FontWeight.w600,
  );
  static const voucherExpire = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray5,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const price = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray5,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static const productDiscountPrice = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.red,
    fontSize: 15,
    decoration: TextDecoration.lineThrough,
    fontWeight: FontWeight.w600,
  );

  static const count = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.white,
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const emptyCard = TextStyle(
    color: AppColors.middleGray,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static const applicationName = TextStyle(
    color: AppColors.black1,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static const styNoInternetSubTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black2,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  static const alternativePrice = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray2,
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );

  static const statusOrder = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.assets,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static const shopSubTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray4,
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

  static const companyName = alternativeTitle;
  static const feedback = alternativeTitle;
  static const alternativeTitle = TextStyle(
      // fontFamily: 'SFPro',
      color: AppColors.black,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.06);

  static const cartPrice = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.white,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static const voucherPrice = deliveryAddress;
  static const secondaryAppBarTitle = deliveryAddress;
  static const totalPrice = deliveryAddress;
  static const similar = deliveryAddress;

  static const deliveryAddress = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static const checkTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static const chooseLang = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray2,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );

  static const nothing = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.middleGray3,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  static const emptyAddress = appBarTitle;
  static const alternativeName = styNoInternetTitle;
  static const categoryTitle = appBarTitle;
  static const emptyOrder = styNoInternetTitle;
  static const statusId = styNoInternetTitle;
  static const bottomSheet = styNoInternetTitle;
  static const companyProductTitle = styNoInternetTitle;
  static const appBarTitle = styNoInternetTitle;
  static const userName = styNoInternetTitle;
  static const styNoInternetTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const addressTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray2,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const emptyAddressTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const boardTitle = voucherType;
  static const voucherType = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
  static const productItemCount = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.white,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );

  static const subCompanyName = productName;
  static const productName = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const mapTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );
  static const intro = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 28,
    fontWeight: FontWeight.w600,
    // letterSpacing: -2,
  );

  static const companyTextStyle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.darkGray,
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );
  static const companyTitle = TextStyle(
    // fontFamily: 'SFPro',
    color: AppColors.black,
    fontSize: 34,
    fontWeight: FontWeight.w600,
    letterSpacing: -2,
  );
}
