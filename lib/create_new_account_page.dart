import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shi_group33_cap_project2/constants/custom_colors.dart';
import 'package:shi_group33_cap_project2/constants/custom_icons.dart';
import 'package:shi_group33_cap_project2/constants/custom_image.dart';
import 'package:shi_group33_cap_project2/home_page.dart';
import 'package:shi_group33_cap_project2/widget.dart';

class CreateNewAccountPage extends StatefulWidget {
  const CreateNewAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateNewAccountPage> createState() => _CreateNewAccountPageState();
}

class _CreateNewAccountPageState extends State<CreateNewAccountPage> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body : SingleChildScrollView(
        child: SizedBox(
          width: _screenWidth,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: _screenHeight * 0.1,
                    ),
                    Center(
                        child: SvgPicture.asset(
                          CustomImages().appLogo,
                          height: _screenWidth * 0.3,
                        )),
                    SizedBox(
                      height: _screenHeight * 0.05,
                    ),
                    const Text(
                      'Create new account',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    customTextField(textFiieldName: 'Email', context: context),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(textFiieldName: 'Password', context: context),
                    const SizedBox(
                      height: 10,
                    ),
                    customTextField(
                        textFiieldName: 'Confirm Password', context: context),
                    SizedBox(
                      height: _screenHeight * 0.05,
                    ),
                    customButton(buttonText: 'Sign Up', context: context, onSubmit: () {
                      Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: const HomePage(),
                          ));
                    }),
                    SizedBox(
                      height: _screenHeight * 0.03,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: CustomColors.darkAsh,
                          radius: 3,
                        ),
                        const SizedBox(width: 5,),
                        const Text('Or sign up with', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: CustomColors.darkAsh),),
                        const SizedBox(width: 5,),
                        Container(
                          color: CustomColors.darkAsh,width: 6,height: 2,
                        )
                      ],
                    ),
                    SizedBox(
                      height: _screenHeight * 0.02,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 60,width: 80,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(CustomIcons().googleIcon,),
                            ),
                          ),
                        ),

                        SizedBox(height: 60,width: 80,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(CustomIcons().facebookIcon,),
                            ),
                          ),
                        ),

                        SizedBox(height: 60,width: 80,
                          child: Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(CustomIcons().twitterIcon,),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SvgPicture.asset(CustomImages().signUpBackgroundImage)
            ],
          ),
        ),
      ),
    );
  }
}
