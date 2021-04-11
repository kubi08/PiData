
import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';
import 'package:pi_data/widgets/capture_view_dialog_second.dart';
Future captureViewDialogFirst(BuildContext context, double width, double height,
    {String imagePath}) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.grey.shade50.withOpacity(0.1),
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    transitionDuration: const Duration(milliseconds: 10),
    pageBuilder: (BuildContext buildContext, Animation animation,
        Animation secondaryAnimation) {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
          captureViewDialogSecond(context, width, height, imagePath);
        },
        onHorizontalDragUpdate: (dragEndDetails) {
          if (dragEndDetails.primaryDelta < 0) {
            Navigator.pop(context);
            captureViewDialogSecond(context, width, height, imagePath);
          } else if (dragEndDetails.primaryDelta > 0) {
            Navigator.pop(context);
          }
        },
        child: SafeArea(
          top: true,
          right: false,
          left: false,
          bottom: false,
          child: Center(
            child: Container(
              color:secondaryColor.withOpacity(0.8),
              margin: EdgeInsets.only(top: 55),
              width: width,
              height: height,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: FlatButton(
                        color: Colors.transparent,
                        onPressed: () {Navigator.pop(context);},
                        child: Icon(Icons.close_outlined,color:whiteColor,size: 50,)),
                  ),
                  Expanded(child: Image.asset(imagePath)),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
