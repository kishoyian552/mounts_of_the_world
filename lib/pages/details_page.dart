import 'package:flutter/material.dart';
import '../models/mount_model.dart';
import '../theme.dart';
import '../widgets/details_rating_bar.dart';
import '../widgets/details_bottom_actions.dart';

class DetailsPage extends StatelessWidget {
  final MountModel mount;

  const DetailsPage(this.mount, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedItem = mount;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        // Added SafeArea for better layout on devices with notches etc
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(selectedItem.path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedItem.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            selectedItem.location,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      iconTheme: const IconThemeData(color: Colors.white),
                      title: const Center(
                        child: Icon(
                          Icons.terrain,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      actions: const [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.pending,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    children: const [
                      DetailsRatingBar(),
                      SizedBox(height: 20),
                      _DetailsDescription(),
                      SizedBox(height: 20),
                      DetailsBottomActions(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailsDescription extends StatelessWidget {
  const _DetailsDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DetailsPage detailsPage = context
        .findAncestorWidgetOfExactType<DetailsPage>()!;
    final description = detailsPage.mount.description;
    final name = detailsPage.mount.name;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About $name',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(description, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
