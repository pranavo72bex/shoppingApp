import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shoppingApp/domain/general_detail/general_detail.dart';
import 'package:shoppingApp/domain/general_detail/i_general_detail_repo.dart';

part 'general_detail_state.dart';
part 'general_detail_cubit.freezed.dart';

@injectable
class GeneralDetailCubit extends Cubit<GeneralDetailState> {
  final IGeneralDetailRepo _generalDetailRepo;
  GeneralDetailCubit(this._generalDetailRepo)
      : super(GeneralDetailState.loading());

  Future<void> aboutUsStarted() async {
    try {
      final aboutUs = await _generalDetailRepo.getAboutUs();
      emit(_Loaded(aboutUs));
    } catch (e) {
      print(e);
      emit(_Failure());
    }
  }

  Future<void> pirvacyPolicyStarted() async {
    try {
      final aboutUs = await _generalDetailRepo.getPirvacyPolicy();
      emit(_Loaded(aboutUs));
    } catch (e) {
      emit(_Failure());
    }
  }

  Future<void> termsAndConditionsStarted() async {
    try {
      final aboutUs = await _generalDetailRepo.getTermsAndConditions();
      emit(_Loaded(aboutUs));
    } catch (e) {
      emit(_Failure());
    }
  }

  Future<void> faqStarted() async {
    try {
      final aboutUs = await _generalDetailRepo.getFaq();
      emit(_Loaded(aboutUs));
    } catch (e) {
      emit(_Failure());
    }
  }
}
