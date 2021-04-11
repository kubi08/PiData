import 'package:flutter/material.dart';
import 'package:pi_data/config/colors.dart';
import 'capture_view_dialog_second.dart';

Future captureViewDialogThird(
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
          },
          onHorizontalDragUpdate: (dragEndDetails) {
            if (dragEndDetails.primaryDelta < 0) {
              Navigator.pop(context);
            } else if (dragEndDetails.primaryDelta > 0) {
              Navigator.pop(context);

              captureViewDialogSecond(context, width, height, imagePath);
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
                width: width,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 25,
                          height: 25,
                          child: FlatButton(
                            color: Colors.transparent,
                            onPressed: () {
                                Navigator.pop(context);

                              },
                            child: Icon(Icons.close_outlined,size: 50,color: whiteColor,),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child:Icon(Icons.check_circle_outline_outlined,color: greenColor,size: 80,)),
                    Container(
                      margin: EdgeInsets.only(top: 80.15),
                      alignment: Alignment.bottomLeft,
                      child: RichText(
                        text: TextSpan(
                          text: "İşlem",
                          style: TextStyle(
                              fontSize: 30.0,
                              color:whiteColor,
                              fontFamily: 'primaryFont'),
                          children: <TextSpan>[
                            TextSpan(
                              text: " Başarılı",
                              style: TextStyle(
                                  fontSize: 30.0,
                                  fontFamily: 'primaryFont',
                                  decorationColor:primaryColor,
                                  color:whiteColor),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
