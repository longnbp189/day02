import 'package:flutter/material.dart';
import 'package:homework2/modules/messenger/models/message.dart';
import 'package:homework2/modules/messenger/repos/list_messages_repo.dart';
import 'package:homework2/modules/messenger/widgets/item_online.dart';
import 'package:homework2/utils/app_text_styles.dart';

class ItemRow extends StatefulWidget {
  const ItemRow({Key? key}) : super(key: key);

  @override
  _ItemRowState createState() => _ItemRowState();
}

class _ItemRowState extends State<ItemRow> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Message> onlineList = MessageInfo().getListUserOnline();
    return Container(
      height: size.height * 0.15,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.black45,
          width: 1,
        ),
        top: BorderSide(
          color: Colors.black26,
          width: 0.5,
        ),
      )),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: onlineList.length,
            itemBuilder: (context, index) {
              return Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: size.width * 0.18,
                        width: size.width * 0.18,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    onlineList[index].image.toString()),
                                fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.circular(size.width * 0.1)),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        onlineList[index].name.toString(),
                        style: AppStyles.h6.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: size.width * 0.16,
                    top: size.width * 0.13,
                    child: ItemOnline())
              ]);
            }),
      ),
    );
  }
}
