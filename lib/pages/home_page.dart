import 'package:cozy/models/space.dart';
import 'package:cozy/models/tips.dart';
import 'package:cozy/theme.dart';
import 'package:cozy/widgets/bottom_navbar_item.dart';
import 'package:cozy/widgets/city_card.dart';
import 'package:cozy/widgets/space_card.dart';
import 'package:cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy/models/city.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE : Title / Header
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE : Popular Cities
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  CityCard(
                    City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/city1.png'),
                  ),
                  const SizedBox(width: 20),
                  CityCard(
                    City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/images/city2.png',
                        isPopular: true),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/city3.png'),
                  ),
                  const SizedBox(
                    width: 24,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE : Recomended Spaces.
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Alun-alun',
                      imageUrl: 'assets/images/space1.png',
                      price: 52,
                      city: 'Pekalongan',
                      country: 'Indonesia',
                      rating: 5,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                      id: 2,
                      name: 'Gedung Garuda',
                      imageUrl: 'assets/images/space2.png',
                      price: 11,
                      city: 'Batang',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                      id: 3,
                      name: 'Konoha Village',
                      imageUrl: 'assets/images/space3.png',
                      price: 7,
                      city: 'Konoha',
                      country: 'Indonesia',
                      rating: 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // NOTE : Tips & guidance
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl: 'assets/images/tips1.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Pekalongan Fairship',
                      imageUrl: 'assets/images/tips2.png',
                      updatedAt: '11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
