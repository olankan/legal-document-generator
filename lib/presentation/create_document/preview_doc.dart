import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_authentication/widgets/widget.dart';
import 'package:legal_document_generator/components/constants/widgets/custom_button.dart';

import '../../components/constants/app_colors.dart';

class PreviewDocument extends StatelessWidget {
  const PreviewDocument({Key? key, required this.document}) : super(key: key);
  final String document;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.secondaryColor,
        automaticallyImplyLeading: false,
        // You can set this to false if you want to customize the leading widget.
        leading: // You can use Ink or any other widget here as well.
            // color: Colors.red, // Set the desired color here.
            IconButton(
          icon: Icon(
            Icons.chevron_left_rounded,
            color: AppColor.primaryColor,
            size: 35.r,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Center(
          child: const Text(
            'Preview Document',
            style: TextStyle(
              color: Color(0XFF4D426D),
              fontWeight: FontWeight.w700,
              fontFamily: 'Onest',
              fontSize: 22,
            ),
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 8).r,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  document,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    letterSpacing: 2,
                    color: const Color(0XFFEFA985),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Onest',
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              buttonText: 'Copy text to clipboard',
              onPressed: () {
                Clipboard.setData(ClipboardData(text: document)).then((_) {
                  showSnackbar(context, AppColor.successfulSnackbarColor,
                      'Copied successfully');
                });
              },
            ),
            SizedBox(
              height: 10.sp,
            )
          ],
        ),
      ),
    );
  }
}
