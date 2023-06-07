import 'package:expenxers/utils/constants.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

import '../utils/widget/profile_account_info_title.dart';

class HomeProfileTab extends StatelessWidget {
  const HomeProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        leading: const Icon(
          Icons.arrow_back,
          color: fontDark,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: defaultSpacing),
            child: Icon(
              Icons.settings,
              color: fontDark,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing,
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(defaultRadius)),
                      child: Image.asset(
                        "lib/assets/images/avatar.jpeg",
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      height: defaultSpacing / 3,
                    ),
                    Text(
                      "Florian Kadji",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700, color: fontHeading),
                    ),
                    Text(
                      "jesuisunkadji@gmail.com",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(color: fontSubHeading),
                    ),
                    const SizedBox(
                      height: defaultSpacing / 2,
                    ),
                    const Chip(
                        backgroundColor: primaryLight,
                        label: Text("Edit profile")),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "General",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700, color: fontHeading),
                    ),
                    SizedBox(
                      height: defaultSpacing,
                    ),
                    const GeneralAccountInfoTile(
                        title: "Bank Locatian",
                        subtitle: "7307 Grand Avenue,Flushing Ny3293",
                        imageUrl: "lib/assets/icons/location-1.png"),
                    const GeneralAccountInfoTile(
                        title: "My wallet",
                        subtitle: "Manage your save wallet ",
                        imageUrl: "lib/assets/icons/wallet.png"),
                    Text(
                      "Account",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700, color: fontHeading),
                    ),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfoTile(
                        heading: "My account",
                        iconUrl: "lib/assets/icons/user-1.png"),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfoTile(
                        heading: "Notification",
                        iconUrl: "lib/assets/icons/bell.png"),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfoTile(
                        heading: "Privacy",
                        iconUrl: "lib/assets/icons/lock-on.png"),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfoTile(
                        heading: "About",
                        iconUrl: "lib/assets/icons/info-circle.png"),
                  ]),
            )
          ],
        ),
      )),
    );
  }
}
