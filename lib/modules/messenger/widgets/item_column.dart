import 'package:flutter/material.dart';
import 'package:homework2/modules/messenger/models/message.dart';
import 'package:homework2/modules/messenger/repos/list_messages_repo.dart';
import 'package:homework2/modules/messenger/widgets/item_noti.dart';
import 'package:homework2/modules/messenger/widgets/item_online.dart';
import 'package:homework2/utils/app_colors.dart';
import 'package:homework2/utils/app_text_styles.dart';

class ItemColumn extends StatefulWidget {
  const ItemColumn({Key? key}) : super(key: key);

  @override
  _ItemColumnState createState() => _ItemColumnState();
}

class _ItemColumnState extends State<ItemColumn> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Message> messageList = MessageInfo().getListMessages();
    return Expanded(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ListView.builder(
              itemCount: messageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                      ),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              height: size.width * 0.18,
                              width: size.width * 0.18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          messageList[index].image.toString()),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.circular(size.width * 0.1)),
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            (messageList[index].numberMessage) != null
                                ? Expanded(
                                    child: Container(
                                      height: size.height * 0.11,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                      )),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  messageList[index]
                                                      .name
                                                      .toString(),
                                                  style: AppStyles.h5.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Text(
                                                messageList[index]
                                                    .timeMessage
                                                    .toString(),
                                                style: AppStyles.h6.copyWith(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                width: size.height * 0.015,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: size.height * 0.005,
                                          ),
                                          Text(
                                            messageList[index]
                                                .content
                                                .toString(),
                                            style: AppStyles.h5.copyWith(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    child: Container(
                                      height: size.height * 0.11,
                                      decoration: const BoxDecoration(
                                          border: Border(
                                        bottom: BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                      )),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    messageList[index]
                                                        .name
                                                        .toString(),
                                                    style: AppStyles.h5
                                                        .copyWith(
                                                            color: AppColor
                                                                .lightGray)),
                                              ),
                                              Text(
                                                messageList[index]
                                                    .timeMessage
                                                    .toString(),
                                                style: AppStyles.h6.copyWith(
                                                    color:
                                                        AppColor.textTimeColor,
                                                    fontSize: 14),
                                              ),
                                              SizedBox(
                                                width: size.height * 0.015,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: size.height * 0.005,
                                          ),
                                          Text(
                                            messageList[index]
                                                .content
                                                .toString(),
                                            style: AppStyles.h5.copyWith(
                                                color: AppColor.lightGray,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                    (messageList[index].numberMessage) == null
                        ? const SizedBox()
                        : Positioned(
                            left: size.width * 0.15,
                            top: size.width * 0.14,
                            child: ItemNoti(
                              num: messageList[index].numberMessage,
                            ))
                  ]),
                );
              }),
        ),
      ),
    );
  }
}
