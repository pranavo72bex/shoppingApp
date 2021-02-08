import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/auth/common/signout_dialog.dart';

import '../common_widget/profile_pic_upload.dart';
import '../core/app_router.gr.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.blueGrey[100],
                    ),
                  ),
                  Center(
                    child: ProfilePicUpload(),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blueGrey[100],
              child: Column(
                children: [
                  Text(
                    'Jsessica Simpson',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    'sjsessica@gmail.com',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.blueGrey[100],
              child: Material(
                color: Colors.blueGrey[100],
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => ExtendedNavigator.of(context)
                          .push(Routes.aboutMePage),
                      child: ListTile(
                        leading: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        title: Text('About Me'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () =>
                          ExtendedNavigator.of(context).push(Routes.cartPage),
                      child: ListTile(
                        leading: Icon(Icons.shopping_bag_outlined,
                            color: Theme.of(context).accentColor),
                        title: Text('My Orders'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () =>
                          ExtendedNavigator.of(context).push(Routes.reviewPage),
                      child: ListTile(
                        leading: Icon(Icons.rate_review_rounded,
                            color: Theme.of(context).accentColor),
                        title: Text('My Reviews'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.favorite_border_outlined,
                            color: Theme.of(context).accentColor),
                        title: Text('My Favorites'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.location_city_sharp,
                            color: Theme.of(context).accentColor),
                        title: Text('My Address'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.credit_card_outlined,
                            color: Theme.of(context).accentColor),
                        title: Text('Credit Card'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    // InkWell(
                    //   onTap: () {},
                    //   child: ListTile(
                    //     leading: Icon(Icons.person_outline,
                    //         color: Theme.of(context).accentColor),
                    //     title: Text('Transaction'),
                    //     trailing: Icon(Icons.navigate_next_outlined),
                    //   ),
                    // ),
                    InkWell(
                      onTap: () => ExtendedNavigator.of(context)
                          .push(Routes.notificationsPage),
                      child: ListTile(
                        leading: Icon(Icons.notification_important_outlined,
                            color: Theme.of(context).accentColor),
                        title: Text('Notification'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.category_outlined,
                            color: Theme.of(context).accentColor),
                        title: Text('Categories'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        BlurryDialog("hello", "ehllo");
                      },
                      child: ListTile(
                        leading: Icon(Icons.login_outlined,
                            color: Theme.of(context).accentColor),
                        title: Text('Sign Out'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
