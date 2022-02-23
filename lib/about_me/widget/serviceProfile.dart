import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:spring/spring.dart';
import 'package:testweb/about_me/widget/about_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testweb/about_me/widget/serviceTextTile.dart';

class ServiceProfile extends StatelessWidget {
  final double heightC2;

  const ServiceProfile({
    required this.heightC2,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          height: this.heightC2,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            child: Spring.fadeIn(
              delay: const Duration(seconds: 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "SERVICES",
                    style: TextStyle(
                      color: Color(0xFFadad57).withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                    ),
                  ),

                  //
                  ServiceAbout(
                    serviceTextWidget: GFAccordion(
                      contentPadding: EdgeInsets.all(5),
                      showAccordion: true,
                      title: 'APPLICATION MOBILE',
                      contentChild: Wrap(
                        children: [
                          ServiceTextTile(
                              serviceText:
                                  "- Creation et integration d'une applicationt de A a Z a partir d'une maquete"),
                          ServiceTextTile(
                              serviceText:
                                  "- Maintenance avec factorisation de code de l'application"),
                          ServiceTextTile(
                              serviceText:
                                  "- Optimisation et analyse de la perfomance de l'application"),
                          ServiceTextTile(
                              serviceText:
                                  "- Assure la responsive mobile, application bien adapte a l'ecran "),
                        ],
                      ),
                      collapsedIcon: Icon(Icons.arrow_drop_down_circle_rounded),
                      expandedIcon: Icon(Icons.arrow_drop_up_outlined),
                    ),
                    iconS: Icons.android,
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  ServiceAbout(
                    serviceTextWidget: GFAccordion(
                      showAccordion: true,
                      title: 'APPLICATION WEB',
                      contentChild: Wrap(
                        children: [
                          ServiceTextTile(
                              serviceText:
                                  "- Creation d'une applicationt de A a Z a partir d'une maquete"),
                          ServiceTextTile(
                              serviceText:
                                  "- Factorisation de code de l'application"),
                          ServiceTextTile(
                              serviceText: "- Optimisation de l'application"),
                          ServiceTextTile(
                              serviceText: "- Assure la responsive web"),
                        ],
                      ),
                      collapsedIcon: Icon(Icons.arrow_drop_down_circle_rounded),
                      expandedIcon: Icon(Icons.arrow_drop_up_outlined),
                    ),
                    iconS: Icons.web,
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  ServiceAbout(
                    serviceTextWidget: GFAccordion(
                      showAccordion: true,
                      title: 'CONCEPTION UI/UX WEB/MOBILE',
                      contentChild: Wrap(
                        children: [
                          ServiceTextTile(serviceText: "- API Integration "),
                          ServiceTextTile(
                              serviceText: "- Factorisation de code"),
                          ServiceTextTile(
                              serviceText:
                                  "- Optimisation et analyse performance"),
                          ServiceTextTile(
                              serviceText:
                                  "- Assure la responsive mobile, web et desktop "),
                        ],
                      ),
                      collapsedIcon: Icon(Icons.arrow_drop_down_circle_rounded),
                      expandedIcon: Icon(Icons.arrow_drop_up_outlined),
                    ),
                    iconS: Icons.code,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}