import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:green/main.dart';
import 'package:green/presets/colors.dart';
import 'package:green/presets/fonts.dart';
import 'package:green/presets/styles.dart';
import 'package:green/widgets/button.dart';
import 'package:green/widgets/divider_line.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const random = Uuid();
final formatted = DateFormat.yMd();
final currentUser = FirebaseAuth.instance.currentUser!;

class BeGreen extends StatefulWidget {
  const BeGreen({Key? key}) : super(key: key);

  @override
  State<BeGreen> createState() {
    return _BeGreenState();
  }
}

class _BeGreenState extends State<BeGreen> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String BeGreenReward = '';
  String emojiAsset = '';
  File? _capturedImage;
  bool isCaptured = false;
  bool isLoading = false;
  late Completer<void> _cameraReadyCompleter;

  void loadCamera() async {
    _cameraReadyCompleter = Completer<void>();

    cameraController = CameraController(cameras![0], ResolutionPreset.high);

    await cameraController!.initialize().then((_) {
      if (!mounted) {
        return;
      }

      _cameraReadyCompleter.complete();

      setState(() {
        cameraController!.startImageStream((image) {
          cameraImage = image;
          // runModel();
        });
      });
    });
  }

  void logBeGreen() async {
    final currentUser = FirebaseAuth.instance.currentUser!;
    setState(() {
      isLoading = true;
    });

    try {
      await _cameraReadyCompleter.future; // Wait for camera to be ready

      // Stop the camera stream
      cameraController!.stopImageStream();
      // stop the model

      // Capture image immediately
      final image = await cameraController!.takePicture();

      // ignore: unnecessary_null_comparison
      if (image == null) {
        return;
      } else {
        print('image captured');
      }

      // convert image to file
      _capturedImage = File(image.path);
      String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
      String filename = '$timestamp.jpg';
      String postId = random.v1();
      final userData = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get();
      BeGreenReward = '50 Points';

      // upload image to firebase storage
      final ref = FirebaseStorage.instance
          .ref()
          .child('BeGreen')
          .child(currentUser.uid)
          .child(filename);

      await ref.putFile(_capturedImage!);

      // get image url
      final imageUrl = await ref.getDownloadURL();

// Assuming currentUser.uid is the user's unique identifier
      final userBeGreenCollection =
          FirebaseFirestore.instance.collection('BeGreen').doc(postId);

      await userBeGreenCollection.set({
        'uid': currentUser.uid,
        'pid': postId,
        'username': userData.data()!['first_name'],
        'userImage': userData.data()!['profileImageURL'],
        'BeGreenReward': BeGreenReward,
        'imageUrl': imageUrl,
        'time': DateTime.now().toString(),
        'timestamp': timestamp,
        'likes': 0,
      });
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        isLoading = false;
        isCaptured = true;
      });
    }

    setState(() {
      isCaptured = true;
    });
  }

  void rescan() {
    setState(() {
      isCaptured = false;
      BeGreenReward = ''; // Reset output
    });
    loadCamera(); // Restart the camera for rescanning
  }

  @override
  void initState() {
    loadCamera();
    // loadModel();
    super.initState();

    // make sure model is loaded before camera
  }

  @override
  void dispose() {
    super.dispose();
    cameraController!.dispose();
    // Tflite.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(gradient: AppColor.backgroundGradient()),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                title: Text(
                  "BeGreen",
                  style: AppFonts.normalRegularText,
                ),
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(
                    "lib/assets/icons/arrow_back_gray_small.png",
                    width: 30,
                  ),
                ),
              ),
              isCaptured
                  ? Column(
                      children: [
                        const SizedBox(height: 40),
                        Column(
                          children: [
                            Text(
                              "Re-Post Your BeGreen",
                              style: AppFonts.heading3,
                            ),
                            Text(
                              "Frame it in the camera and hold still",
                              style: AppFonts.smallLightText,
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                        SizedBox(
                          child: Image.file(
                            _capturedImage!,
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.height * 0.35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 60),
                            Text(
                              "Congratulations! You have earned",
                              style: AppFonts.normalRegularText,
                            ),
                            const SizedBox(height: 5),
                            const Padding(
                              padding: AppStyles.edgeInsetsLR,
                              child: DividerLine(),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 60),
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    // output == '0 happy'
                                    //     ? Image.asset(
                                    //         'lib/assets/images/emojiHappy.png',
                                    //         width: 120,
                                    //       )
                                    //     : output == '1 sad'
                                    //         ? Image.asset(
                                    //             'lib/assets/images/Sad.png',
                                    //             width: 120,
                                    //           )
                                    //         : output == ' 2 angry'
                                    //             ? Image.asset(
                                    //                 'lib/assets/images/emojiHappy.png',
                                    //                 width: 120,
                                    //               )
                                    //             : Container(),
                                    // SizedBox(width: 10),
                                    Text(
                                      BeGreenReward,
                                      style: AppFonts.heading3Height,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: DefaultButton(
                            press: rescan,
                            text: "Retake a photo",
                            backgroundColor: AppColor.btnColorPrimary,
                            height: 40,
                            fontStyle: AppFonts.normalRegularTextWhite,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const SizedBox(height: 40),
                        Column(
                          children: [
                            Text(
                              "Post your BeGreen",
                              style: AppFonts.heading3,
                            ),
                            Text(
                              "Frame it in the camera and hold still",
                              style: AppFonts.smallLightText,
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.height * 0.35,
                              child: !cameraController!.value.isInitialized
                                  ? Container()
                                  : ClipRRect(
                                      borderRadius: AppStyles.borderRadiusAll,
                                      child: AspectRatio(
                                        aspectRatio:
                                            cameraController!.value.aspectRatio,
                                        child: CameraPreview(cameraController!),
                                      ),
                                    ),
                            ),
                            // In the Column where you display the camera preview and the CircularProgressIndicator
                            SizedBox(
                              height: 35, // Set the desired height
                              width: 35, // Set the desired width
                              child: isLoading
                                  ? CircularProgressIndicator(
                                      strokeWidth:
                                          2, // Optionally adjust the stroke width
                                      color: AppColor.btnColorPrimary,
                                    )
                                  : const SizedBox(), // Use SizedBox if not loading
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 60),
                            Text(
                              "Glad you are practicing to BeGreen!",
                              style: AppFonts.normalRegularText,
                            ),
                            const SizedBox(height: 5),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: DividerLine(),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 60),
                              child: SizedBox(
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      BeGreenReward,
                                      style: AppFonts.heading3Height,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: DefaultButton(
                            press: isLoading ? null : logBeGreen,
                            text: "Upload BeGreen",
                            backgroundColor: AppColor.btnColorPrimary,
                            height: 40,
                            fontStyle: AppFonts.normalRegularTextWhite,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
