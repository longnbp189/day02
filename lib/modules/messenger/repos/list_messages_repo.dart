import 'package:homework2/modules/messenger/models/message.dart';

class MessageInfo {
  List<Message> getListMessages() {
    List<Message> list = [];
    list.add(Message(
        name: 'Herman Pope',
        content: "Hey! How's it going",
        numberMessage: 3,
        timeMessage: '04:04AM',
        image: 'assets/images/1.jpg'));
    list.add(Message(
        name: 'Sue Caldwell',
        content: 'What kind of music do you like?',
        numberMessage: 1,
        timeMessage: '08:58PM',
        image: 'assets/images/2.jpg'));
    list.add(Message(
        name: 'Ada Reyes',
        content: 'Sounds good to me!',
        timeMessage: '11:13PM',
        image: 'assets/images/3.jpg'));
    list.add(Message(
        name: 'Hallie Sandoval',
        content: "Hi Tina. How's your night going?",
        timeMessage: '06:58PM',
        image: 'assets/images/4.jpg'));
    list.add(Message(
        name: 'Dean Warren',
        content: 'What did you do over the weekend',
        timeMessage: '09:43PM',
        image: 'assets/images/5.jpg'));
    list.add(Message(
        name: 'John Ham',
        content: 'Good night.',
        timeMessage: '08:35PM',
        image: 'assets/images/6.jpg'));
    return list;
  }

  List<Message> getListUserOnline() {
    List<Message> list = [];
    list.add(Message(name: 'Christopher', image: 'assets/images/7.jpg'));
    list.add(Message(name: 'Reese', image: 'assets/images/8.jpg'));
    list.add(Message(name: 'Jeffrey', image: 'assets/images/9.jpg'));
    list.add(Message(name: 'Laura', image: 'assets/images/10.jpg'));
    list.add(Message(name: 'Warren', image: 'assets/images/11.jpg'));
    list.add(Message(name: 'John', image: 'assets/images/12.jpg'));
    return list;
  }
}
