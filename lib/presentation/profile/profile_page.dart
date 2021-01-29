import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shoppingApp/presentation/common_widget/profile_pic_upload.dart';
import 'package:shoppingApp/presentation/core/app_router.gr.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: MediaQuery.of(context).size.width - 32,
                      height: 100,
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
              margin: EdgeInsets.symmetric(horizontal: 16),
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
              margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
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
                        leading: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        title: Text('My Orders'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        title: Text('My Favorites'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        title: Text('My Address'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        title: Text('Credit Card'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        title: Text('Transaction'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        title: Text('Notification'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.person_outline,
                            color: Theme.of(context).accentColor),
                        title: Text('Categories'),
                        trailing: Icon(Icons.navigate_next_outlined),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListTile(
                        leading: Icon(Icons.person_outline,
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
