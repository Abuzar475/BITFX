import 'package:bitfx/Screens/color.dart';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Ecalendar extends StatefulWidget {
  const Ecalendar({Key? key}) : super(key: key);

  @override
  _EcalendarState createState() => _EcalendarState();
}

class _EcalendarState extends State<Ecalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Economic Calendar",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: kmain),
          )),
          backgroundColor: maingry,
          automaticallyImplyLeading: false,
        ),
        body: WebView(
          initialUrl: Uri.dataFromString(
                  '<html><body><<iframe src="https://sslecal2.investing.com?columns=exc_flags,exc_currency,exc_importance,exc_actual,exc_forecast,exc_previous&features=datepicker,timezone&countries=25,32,6,37,72,22,17,39,14,10,35,43,56,36,110,11,26,12,4,5&calType=week&timeZone=8&lang=1" width="100%" height="100%" frameborder="0" allowtransparency="true" marginwidth="0" marginheight="0"></iframe><div class="poweredBy" style="font-family: Arial, Helvetica, sans-serif;"><span style="font-size: 11px;color: #333333;text-decoration: none;">Real Time Economic Calendar provided by <a href="https://www.investing.com/" rel="nofollow" target="_blank" style="font-size: 11px;color: #06529D; font-weight: bold;" class="underline_link">Investing.com</a>.</span></div></body></html>',
                  mimeType: 'text/html')
              .toString(),
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
