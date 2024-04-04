//
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/shadow.dart';
import 'package:green/presets/styles.dart';
import 'package:green/model/bereal_model.dart';

class BeGreenItem extends StatefulWidget {
  final BeReal beRealPost;

  const BeGreenItem({Key? key, required this.beRealPost}) : super(key: key);

  @override
  State<BeGreenItem> createState() => _ForumItemState();
}

class _ForumItemState extends State<BeGreenItem> {
  bool isLiked = false;
  int likesCount = 0;

  String calculateTimeDifference(String postTimeString) {
    DateTime postTime =
        DateTime.parse(postTimeString); // Convert string to DateTime
    DateTime now = DateTime.now();
    Duration difference = now.difference(postTime);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min(s) ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hr(s) ago';
    } else {
      return '${difference.inDays} day(s) ago';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Construct the URL for the image from the image path
    String imageUrl = ''; // You should replace this with the actual URL

    // If the image path is not null or empty, construct the URL
    // ignore: unnecessary_null_comparison
    if (widget.beRealPost.postImage != null &&
        widget.beRealPost.postImage.isNotEmpty) {
      // Assuming your storage bucket URL is 'https://your_storage_bucket_url.com'
      imageUrl = widget.beRealPost.postImage;
    }

    return Container(
      width: MediaQuery.of(context).size.width - 30,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          constraints: const BoxConstraints(minHeight: 50),
          decoration: BoxDecoration(
            color: AppColor.btnColorSecondary,
            borderRadius: AppStyles.borderRadiusAll,
            boxShadow: [
              AppShadow.innerShadow3,
              AppShadow.innerShadow4,
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Increased padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      child: ClipOval(
                        child: widget.beRealPost.userImage != ''
                            ? Image.network(
                                widget.beRealPost.userImage.toString(),
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                "lib/assets/images/user_Anon.png",
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.beRealPost.userName,
                            style: AppFonts.smallLightText,
                          ), // CHANGE TO USER NAME FROM FIREBASE
                          Text(
                            calculateTimeDifference(widget.beRealPost.time),
                            style: AppFonts
                                .extraSmallLightText, // Adjusted font size
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),

                // Display the image if there is one
                if (imageUrl.isNotEmpty)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      imageUrl,
                      width:
                          double.infinity, // Make the image take the full width
                      height: 200, // Adjust the height as needed
                      fit: BoxFit.cover, // Cover the space with the image
                    ),
                  ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 35,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isLiked = !isLiked; // Toggle the liked state
                            likesCount += isLiked ? 1 : -1;
                          });
                        },
                        icon: Image.asset(
                          "lib/assets/images/greenpts.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //     Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Expanded(
                    //       child: Text(
                    //         widget.beRealPost.greenRewards,
                    //         style: AppFonts.smallLightText,
                    //         softWrap: true,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Text(
                      // '${widget.forumPost.likes}',
                      widget.beRealPost.greenRewards,
                      style: AppFonts.smallLightText, // Adjusted font size
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
