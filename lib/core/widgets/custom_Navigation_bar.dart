import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/assets.dart';
import 'package:fruits_hub/features/home/presentation/view/widget/home_view_body.dart';
import 'package:svg_flutter/svg.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomeViewBody(),
    // Center(child: Text('Home Screen')),
    const Center(child: Text('Category Screen')),
    const Center(child: Text('Cart Screen')),
    const Center(child: Text('Profile Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.assetsImagesBoldHome,
                      colorFilter: const ColorFilter.mode(
                          Color.fromARGB(255, 69, 70, 70), BlendMode.srcIn),
                      width: 25,
                      height: 25,
                    ),
                    activeIcon: SvgPicture.asset(
                      Assets.assetsImagesOutlineHomeOutline,
                      colorFilter: const ColorFilter.mode(
                          AppColors.primaryColor, BlendMode.srcIn),
                      width: 25,
                      height: 25,
                     ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.assetsImagesBoldProducts,
                      colorFilter: const ColorFilter.mode(
                          AppColors.grey, BlendMode.srcIn),
                      width: 20,   
                    height: 20,
                    ),
                    activeIcon: SvgPicture.asset(
                      Assets.assetsImagesOutlineProductsOutline,
                      colorFilter: const ColorFilter.mode(
                          AppColors.primaryColor, BlendMode.srcIn),
                      width: 25,
                      height: 25,
                    ),
                    label: 'Products',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.assetsImagesBoldShoppingCart,
                      colorFilter: const ColorFilter.mode(
                          AppColors.grey, BlendMode.srcIn),
                      width: 25,
                      height: 25,
                    ),
                    activeIcon: SvgPicture.asset(
                      Assets.assetsImagesOutlineShoppingCartOutline,
                      colorFilter: const ColorFilter.mode(
                          AppColors.primaryColor, BlendMode.srcIn),
                      width: 25,
                      height: 25,
                    ),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      Assets.assetsImagesBoldUser,
                      colorFilter: const ColorFilter.mode(
                          AppColors.grey, BlendMode.srcIn),
                      width: 25,
                      height: 25,
                    ),
                    activeIcon: SvgPicture.asset(
                      Assets.assetsImagesOutlineUser,
                      colorFilter: const ColorFilter.mode(
                          AppColors.primaryColor, BlendMode.srcIn),
                      width: 25,
                      height: 25,
                    ),
                    label: 'Profile',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: AppColors.primaryColor,
                unselectedItemColor: const Color.fromARGB(255, 69, 70, 70),
                showSelectedLabels: true,
                onTap: _onItemTapped,
              ),
            )));
  }
}
