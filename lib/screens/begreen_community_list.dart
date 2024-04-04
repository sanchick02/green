import 'package:flutter/material.dart';
import 'package:green/provider/begreen_post_provider.dart';
import 'package:green/screens/begreen_item.dart';
import 'package:provider/provider.dart';

class BeGreenList extends StatelessWidget {
  const BeGreenList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _provider = Provider.of<BeGreenProvider>(context, listen: false);
    return Column(
      children: List.generate(
        _provider.forumPosts.length,
        (index) => Dismissible(
          key: ValueKey(_provider.forumPosts[index]),
          onDismissed: (direction) {
            // onRemovePost(_provider.forumPosts[index], context);
          },
          child: BeGreenItem(beRealPost: _provider.forumPosts[index]),
        ),
      ),
    );
  }
}
