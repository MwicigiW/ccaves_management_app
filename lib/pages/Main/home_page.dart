import 'package:ccaves_management_app/pages/Main/page_nav.dart';
import 'package:ccaves_management_app/pages/Main/profile_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../Main/messenging.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: const [
          SizedBox(height: 16),
          ProfileInfo(),
          SizedBox(height: 16),
          MessengingSection(),
          SizedBox(height: 16),
          PageNav()
        ]
           ),
      ),
    );
  }
}