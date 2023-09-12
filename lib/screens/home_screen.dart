import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hng_first_task/constants/assets.dart';

import '../app_widgets/app_filled_btn.dart';
import '../app_widgets/avatar_widget.dart';
import '../app_widgets/custom_list_tile.dart';
import '../constants/colors.dart';
import '../constants/dimens.dart';
import '../constants/strings.dart';
import '../constants/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: ColorValues.transparent,
        ),
        child: SizedBox(
          width: Dimens.screenWidth,
          height: Dimens.screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Dimens.boxHeight10,
              _buildBody(context),
               Dimens.boxHeight20,
              ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
     final ThemeData theme = Theme.of(context);
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Padding(
          padding: Dimens.edgeInsetsHorizDefault,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Dimens.boxHeight8,

                /// Profile Picture
                Center(
                  child: Hero(
                      tag: 'Titi',
                      child: AvatarWidget(
                        avatar: AssetsValues.profileImage,
                        size: Dimens.screenWidth * 0.25,
                      )),
                ),

                Dimens.boxHeight16,

                /// Name
                HngListTile(
                  padding: Dimens.edgeInsets12,
                  bgColor: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(Dimens.four),
                  leading: const Icon(Icons.person_outline),
                  title: Text(
                    StringValues.name,
                    style: AppStyles.style12Normal.copyWith(
                      color:
                           Theme.of(context).textTheme.titleMedium!.color,
                    ),
                  ),
                  subtitle: Text(
                    StringValues.slackName,
                    style: AppStyles.style16Normal.copyWith(
                      color: Theme.of(context).textTheme.bodyLarge!.color,
                    ),
                  ),
                  onTap: () {},
                ),

                Dimens.boxHeight8,

                /// Username
                HngListTile(
                      padding: Dimens.edgeInsets12,
                      bgColor: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(Dimens.four),
                      leading: const Icon(Icons.alternate_email_outlined),
                      title: Text(
                        StringValues.username,
                        style: AppStyles.style12Normal.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .color,
                        ),
                      ),
                      subtitle: Text(
                        StringValues.slackUsername,
                        style: AppStyles.style16Normal.copyWith(
                          color:
                              Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                      onTap: (){},
                    ),

                    Dimens.boxHeight8,
                                    
                    /// Email

                    HngListTile(
                      padding: Dimens.edgeInsets12,
                      bgColor: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(Dimens.four),
                      leading: const Icon(Icons.email_outlined),
                      title: Text(
                        StringValues.email,
                        style: AppStyles.style12Normal.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .color,
                          
                        ),
                      ),
                      subtitle: Text(
                        StringValues.slackEmail,
                        style: AppStyles.style16Normal.copyWith(
                          color:
                              Theme.of(context).textTheme.bodyLarge!.color,
                        ),
                      ),
                      onTap: (){}
                    ),

                   
                      Dimens.boxHeight8,

                    /// Phone

                    
                      HngListTile(
                        padding: Dimens.edgeInsets12,
                        bgColor: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(Dimens.four),
                        leading: const Icon(Icons.phone_android),
                        title: Text(
                          StringValues.phone,
                          style: AppStyles.style12Normal.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .color,
                          ),
                        ),
                        subtitle: Text(
                         StringValues.slackPhone,
                          style: AppStyles.style16Normal.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .color,
                          ),
                        ),
                        onTap: (){}
                       
                      ),

                     Dimens.boxHeight12,
        NxFilledButton(
          onTap: _openGithub,
          label: StringValues.openGitHub.toUpperCase(),
          width: Dimens.screenWidth,
          height: Dimens.fiftySix,
        ),

        Dimens.boxHeight30
              ]),
        ),
      ),
    );
  }

   _openGithub() async{
     final Uri url = Uri.parse(StringValues.githubUrl);
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }
  }
}
