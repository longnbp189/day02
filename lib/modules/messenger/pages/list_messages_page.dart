import 'package:flutter/material.dart';
import 'package:homework2/modules/messenger/widgets/item_column.dart';
import 'package:homework2/modules/messenger/widgets/item_row.dart';
import 'package:homework2/utils/app_colors.dart';
import 'package:homework2/utils/app_text_styles.dart';

class ListMessagersPage extends StatefulWidget {
  const ListMessagersPage({Key? key}) : super(key: key);

  @override
  _ListMessagersPageState createState() => _ListMessagersPageState();
}

class _ListMessagersPageState extends State<ListMessagersPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.background,
          leading: const Icon(Icons.arrow_back),
          actions: const [
            Icon(Icons.add),
            SizedBox(
              width: 16,
            )
          ],
        ),
        body: Container(
          width: size.width,
          color: AppColor.background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Messages',
                  style: AppStyles.h3,
                ),
              ),
              const ItemRow(),
              const ItemColumn()
            ],
          ),
        ),
      ),
    );
  }
}
