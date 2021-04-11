
import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';
import 'capture_view_dialog_third.dart';
import 'package:pi_data/widgets/capture_view_dialog_first.dart';

Future captureViewDialogSecond(
    BuildContext context, double width, double height, String imagePath) {
  return showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.grey.shade50.withOpacity(0.1),
      transitionDuration: const Duration(milliseconds: 50),
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
            captureViewDialogThird(context, width, height, imagePath);
          },
          onHorizontalDragUpdate: (dragEndDetails) {
            if (dragEndDetails.primaryDelta < 0) {
              Navigator.pop(context);
              captureViewDialogThird(context, width, height, imagePath);
            } else if (dragEndDetails.primaryDelta > 0) {
              Navigator.pop(context);
              captureViewDialogFirst(context, width, height,
                  imagePath: imagePath);
            }
          },
          child: SafeArea(
            top: true,
            bottom: false,
            left: false,
            right: false,
            child: Center(
              child: Container(
                color:secondaryColor.withOpacity(0.8),
                margin: EdgeInsets.only(top:55),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: FlatButton(
                          color: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);

                          },
                          child:Icon(Icons.close_outlined,size: 50,color: whiteColor,),),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              child: RichText(
                                text: TextSpan(
                                  text: "Boş",
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      color:whiteColor,
                                      fontFamily: 'PantonBold'),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " bırakmayın.",
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          fontFamily: 'PantonBold',
                                          decoration: TextDecoration.underline,
                                          decorationColor:primaryColor,
                                          color:whiteColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            FlatButton(
                              child: Icon(
                                Icons.navigate_next_outlined,
                                color:whiteColor,
                                size: 80,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                captureViewDialogThird(context, width, height, imagePath);
                              },
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
