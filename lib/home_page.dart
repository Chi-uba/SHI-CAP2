import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shi_group33_cap_project2/constants/custom_colors.dart';
import 'package:shi_group33_cap_project2/constants/custom_icons.dart';
import 'package:shi_group33_cap_project2/constants/custom_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: CustomColors.lightWhite,
      body: SingleChildScrollView(
        child: SizedBox(
          width: _screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        // Customized menu bar
                       SizedBox(
                         height: 20,width: 20,
                         child: Stack(
                           children: [
                             Column(crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                  const SizedBox(height: 5,),
                                 Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Container(color: CustomColors.black,
                                       width: 10,height: 3,),
                                   ],
                                 ),
                                 const SizedBox(height: 3,),
                                 Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                                   children: [
                                     Container(color: CustomColors.black,
                                       width: 20,height: 3,),
                                   ],
                                 ),
                                 const SizedBox(height: 3,),
                               ],
                             ),
                             Positioned(
                               bottom: 0,right: 0,
                               child: Container(
                               color: CustomColors.black,
                               width: 10,height: 3,),)
                           ],
                         ),
                       ),

                        SvgPicture.asset(
                          CustomIcons().cartIcon,
                          width: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'What\'s Broken ?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: CustomColors.white,
                              border: Border.all(
                                  color: CustomColors.lightAsh, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextFormField(
                            controller: TextEditingController(),
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(15),
                                hintText: 'Search Appliances',
                                hintStyle:
                                    TextStyle(color: CustomColors.lightAsh),
                                border: InputBorder.none),
                          ),
                        ),
                        Positioned(
                            right: 10,
                            top: 0,
                            bottom: 0,
                            child: SvgPicture.asset(CustomIcons().searchIcon))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Offers',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),

              // Offers tile
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: CustomColors.lightBlue),
                      child: Column(
                        children: [
                          const Expanded(
                            flex: 4,
                            child: Center(
                              child: Text(
                                'valid until July 30th',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: Container(
                              width: 300,
                              decoration: const BoxDecoration(
                                  color: CustomColors.white,
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(30))),
                              child: Stack(
                                children: [
                                  Positioned(
                                      right: 0,
                                      top: 15,
                                      bottom: 0,
                                      child: SizedBox(
                                          height: 250,
                                          width: 130,
                                          child: ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(32)),
                                              child: Image.asset(
                                                CustomImages().tile1Image,
                                                fit: BoxFit.contain,
                                              )))),
                                  Positioned(
                                    right: 80,
                                    top: 15,
                                    child: ConstrainedBox(
                                        constraints:
                                            const BoxConstraints(maxWidth: 130),
                                        child: const Text(
                                          'Get back 5% on the second repair',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: CustomColors.lightAsh),
                      child: Column(
                        children: [
                          const Expanded(
                            flex: 4,
                            child: Center(
                              child: Text(
                                'valid until July 30th',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: CustomColors.lightPurple,
                                  borderRadius: BorderRadius.vertical(
                                      bottom: Radius.circular(30))),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 40,
                                      ),
                                      ConstrainedBox(
                                          constraints:
                                              const BoxConstraints(maxWidth: 100),
                                          child: const Text(
                                            'Sale on appliances repair!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          )),
                                      Image.asset(
                                        CustomImages().tile2Image,
                                        width: 30,
                                        height: 250,
                                        fit: BoxFit.cover,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'We can fix it',
                  style: TextStyle(
                      color: CustomColors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                children: [
                  SvgPicture.asset(CustomImages().repairLogo),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black),
                            child: const Center(
                              child: Text(
                                'Offers',
                                style: TextStyle(color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          const Text(
                            'Kitchen',
                            style: TextStyle(
                                color: CustomColors.darkAsh, fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Livingroom',
                            style: TextStyle(
                                color: CustomColors.darkAsh, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Bathroom',
                            style: TextStyle(
                                color: CustomColors.darkAsh, fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),

                          // we can fix tile
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  color: CustomColors.skyBlue,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration:
                                      const BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: CustomColors.blue),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          CustomIcons().fixMicrowaveIcon,
                                          width: 40,),
                                      ),
                                    ),
                                    const SizedBox(width: 40,),
                                    Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Fix Microwave', style: TextStyle(color: CustomColors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                                        SizedBox(height: 3,),
                                        Text('Kitchen', style: TextStyle(color: CustomColors.darkAsh, fontSize: 14),)
                                      ],
                                    ),
                                    const Spacer(flex: 1,),
                                    const Icon(Icons.arrow_forward_ios,size: 25,),
                                    const SizedBox(width: 20,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  color: CustomColors.skyBlue,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration:
                                      const BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: CustomColors.blue),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          CustomIcons().fixTvIcon,
                                          width: 40,),
                                      ),
                                    ),
                                    const SizedBox(width: 40,),
                                    Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Fix TV set', style: TextStyle(color: CustomColors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                                        SizedBox(height: 3,),
                                        Text('Living room', style: TextStyle(color: CustomColors.darkAsh, fontSize: 14),)
                                      ],
                                    ),
                                    const Spacer(flex: 1,),
                                    const Icon(Icons.arrow_forward_ios,size: 25,),
                                    const SizedBox(width: 20,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
