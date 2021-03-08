import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoppingApp/application/general_detail/general_detail_cubit.dart';
import 'package:shoppingApp/presentation/common_widget/custom_circular_progress_indicator.dart';
import 'package:shoppingApp/presentation/common_widget/custom_message_page.dart';

import '../../../../dependency_injection.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<GeneralDetailCubit>()..aboutUsStarted(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "ABOUT US",
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
        //   body: Padding(
        //     padding: const EdgeInsets.all(5.0),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "Our Mission",
        //           style: TextStyle(
        //               color: Colors.black,
        //               fontSize: 20,
        //               fontWeight: FontWeight.bold),
        //         ),
        //         Text(
        //           "To redefine your grocery shopping experience with our premium and wide range of products. Be it freshest fruits and vegetable, daily need products, kitchen essentials and more.For us, our customer needs comes first. Our Aim is to offer the very Best quality, at best prices and deals.Our effort is towards becoming the one and only choice for customers when it comes to grocery shopping and to provide them with a service they can never forget and cannot compare.",
        //           style: Theme.of(context).textTheme.subtitle2,
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         Text(
        //           "Our Vision",
        //           style: TextStyle(
        //               color: Colors.black,
        //               fontSize: 20,
        //               fontWeight: FontWeight.bold),
        //         ),
        //         Text(
        //           "To be able to reach each and every household in the community and become an alternative name for grocery store.To be India’s most recognized and dominant platform when it comes to fulfilling everyday customer needs in grocery items.",
        //           style: Theme.of(context).textTheme.subtitle2,
        //         ),
        //         SizedBox(
        //           height: 5,
        //         ),
        //         Text(
        //           "Our Core Values",
        //           style: TextStyle(
        //               color: Colors.black,
        //               fontSize: 20,
        //               fontWeight: FontWeight.bold),
        //         ),
        //         Text(
        //           "At Daily Mart Indore, We Believe in Providing best class customer service.Maximizing sales and business unit growth.An engaged, trusting and mutually profitable relationship between franchisee and franchisor.Continually improving, sharing and implementing the System.Operating in a safe environment.",
        //           style: Theme.of(context).textTheme.subtitle2,
        //         ),
        //       ],
        //     ),
        //   ),
      ),
    );
  }
}
