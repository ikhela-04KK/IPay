// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/ui/screen/drawer_page.dart';
import '../../util/file_path.dart';
import 'package:intl/intl.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static DateTime now = DateTime.now();
  String formattedTime = DateFormat.jm().format(now);
  String formattedDate = DateFormat('MMM d, yyyy | E').format(now);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(mainBanner),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _topContent(),
                    _centerContent(),
                    _bottomContent()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 18,
        ),
        Row(
          children: <Widget>[
            Text(
              formattedTime,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              width: 30,
            ),
            SvgPicture.asset(cloud),
            const SizedBox(
              width: 8,
            ),
            Text(
              '34° C',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          formattedDate,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }

  Widget _centerContent() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(logo),
          const SizedBox(
            height: 18,
          ),
          Text(
            'eWalle',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            'Open An Account For Digital  E-Wallet Solutions.\nInstant Payouts. \n\nJoin For Free.',
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      ),
    );
  }

  Widget _bottomContent() {
    return Column(
      children: <Widget>[
        MaterialButton(
          elevation: 0,
          color: const Color(0xFFFFAC30),
          height: 50,
          minWidth: 200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DrawerPage(),
              ),
            );
          },
          child: Text(
            'Sign in',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Create an Account',
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
