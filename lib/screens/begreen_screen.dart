import 'package:flutter/material.dart';
import 'package:green/model/bereal_model.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/provider/begreen_post_provider.dart';
import 'package:green/provider/user_provider.dart';
import 'package:green/screens/begreen.dart';
import 'package:green/screens/begreen_community_list.dart';
import 'package:green/widgets/topbar_logo_notif.dart';
import 'package:provider/provider.dart';

class BeGreenScreen extends StatefulWidget {
  const BeGreenScreen({Key? key}) : super(key: key);

  @override
  State<BeGreenScreen> createState() => _BeGreenScreenState();
}

class _BeGreenScreenState extends State<BeGreenScreen> {
  final List<BeReal> _registeredExpenses = [
    BeReal(
        uid: '',
        pid: '',
        userImage: '',
        userName: '',
        time: '',
        greenRewards: '',
        postImage: '',
        likes: 0),
  ];

  void _addExpense(BeReal beRealPost) {
    setState(() {
      _registeredExpenses.add(beRealPost);
      _registeredExpenses.sort((a, b) => b.time.compareTo(a.time));
    });
  }

  void _removeExpense(BeReal beRealPost) {
    final expenseIndex = _registeredExpenses.indexOf(beRealPost);
    _registeredExpenses.remove(beRealPost);

    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 3),
      content: const Text('Forum Deleted'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          setState(() {
            _registeredExpenses.insert(expenseIndex, beRealPost);
          });
        },
      ),
    ));
  }

  @override
  void initState() {
    Provider.of<BeGreenProvider>(context, listen: false)
        .fetchUserData()
        .then((_) {
      setState(() {
        // _registeredExpenses;
        // _registeredExpenses.sort((a, b) => b.time.compareTo(a.time));
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<UserProvider>(context);

    Widget mainContent = const Center(
      child: Text('No expense found, Start adding some!'),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = const BeGreenList(); // Implement BeGreenList widget
    }

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarLogoNotif(),
              const Padding(
                padding: EdgeInsets.only(left: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 15, right: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 3, bottom: 13),
                      child: Row(
                        children: [
                          Text(
                            "BeGreen Community",
                            style: AppFonts.normalRegularText,
                          ),
                          mainContent,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
