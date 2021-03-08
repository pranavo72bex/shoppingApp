import 'package:shoppingApp/domain/general_detail/general_detail.dart';

abstract class IGeneralDetailRepo {
  Future<GeneralDetail> getAboutUs();
  Future<GeneralDetail> getPirvacyPolicy();
  Future<GeneralDetail> getTermsAndConditions();
  Future<GeneralDetail> getFaq();
}
