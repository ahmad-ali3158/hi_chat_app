import 'package:flutter/material.dart';
import 'package:hi_chat_app/Common/onboarding_colors.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      height: 700,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 20,
        right: MediaQuery.of(context).size.width / 20,
        bottom: MediaQuery.of(context).size.width / 200,
      ),
      child: DraggableScrollableSheet(
          builder: (_, controller) => Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Container(

                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Wrap(
                      spacing: 20,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runAlignment: WrapAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Onboarolors.red,
                              ),
                              child: Icon(
                                Icons.document_scanner_outlined,
                                color: Onboarolors.black,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Document",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Onboarolors.black),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Onboarolors.green,
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: Onboarolors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Camera",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Onboarolors.black),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Onboarolors.yellow,
                              ),
                              child: Icon(
                                Icons.photo_library,
                                color: Onboarolors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Gallery",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Onboarolors.black),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Onboarolors.halkegrey,
                              ),
                              child: Icon(
                                Icons.headphones,
                                color: Onboarolors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Audio",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Onboarolors.black),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Onboarolors.grey,
                              ),
                              child: Icon(
                                Icons.location_on_rounded,
                                color: Onboarolors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Onboarolors.black),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Onboarolors.blue,
                              ),
                              child: Icon(
                                Icons.person,
                                color: Onboarolors.white,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "Contact"
                                "",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Onboarolors.black),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Onboarolors.white,
                      borderRadius: BorderRadius.circular(30)),
                ),
              )),
    );
  }
}
