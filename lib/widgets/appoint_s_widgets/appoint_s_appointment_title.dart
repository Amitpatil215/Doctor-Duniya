import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/appoint_s_widgets/presription_bookAgain_button.dart';
import '../../screens/appointment_connect/appointment_connect_screen.dart';

class ASAppointmentTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 180.h,
        margin: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                  "25 \nSept",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 175.h,
                    width: 0.74.wp,
                    margin: EdgeInsets.only(left: 15.w),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Meeting with Dr. Duva abcde",
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          softWrap: false,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 8.0.h,
                                    left: 9.w,
                                  ),
                                  child: Text(
                                    "7:30 PM",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                Text(
                                  "2 h 30 min",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 160.w,
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Expanded(
                                        child: Text(
                                          "Indira gandhi international airport",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.only(top: 5),
                                  width: 160.w,
                                  child: Row(
                                    children: [
                                      Icon(Icons.phone),
                                      Expanded(
                                        child: Text(
                                          "Telecomunication mmmmmmmmmmmmmmmmmmmmmmm",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        PrescriptionBookAgainButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(AppointmentConnectScreen.routeName);
      },
    );
  }
}
