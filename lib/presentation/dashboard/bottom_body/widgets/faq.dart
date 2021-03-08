import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingApp/application/general_detail/general_detail_cubit.dart';
import 'package:shoppingApp/presentation/common_widget/custom_circular_progress_indicator.dart';
import 'package:shoppingApp/presentation/common_widget/custom_message_page.dart';

import '../../../../dependency_injection.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<GeneralDetailCubit>()..faqStarted(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "FAQ",
          ),
          // backgroundColor: Colors.transparent,
        ),
        body: BlocBuilder<GeneralDetailCubit, GeneralDetailState>(
          builder: (context, state) {
            return state.map(
              loading: (_) => CustomCircularProgressIndicator(),
              loaded: (data) => Center(
                child: Text(data.generalDetail.responsedata.data),
              ),
              failure: (_) => CustomMessagePage(msg: 'Error occured'),
            );
          },
        ),
      ),
    );
  }
}
