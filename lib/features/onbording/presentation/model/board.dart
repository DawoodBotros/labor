import 'package:labor/core/utils/app_images.dart';

class BoardModel {
  String? image;
  String? title;
  String? body;

  BoardModel({this.image, this.title, this.body,});

  void setImage({required String onboarding}) {
    image = getImage();
  }

  void setTitle({required String s}) {
    title = getTitle();
  }

  void setBody({required String s}) {
    body = getBody();
  }

  String? getImage() {
    return image;
  }

  String? getTitle() {
    return title;
  }

  String? getBody() {
    return body;
  }

// List<BoardModel> board = [
//    new BoardModel(
//     image: AppImages.onboarding,
//     body: "Easy Process\n",
//     title: "Find all your house needs in one place.\n"
//         " We provide every service to make your\n "
//         "home experience smooth."
//   ),
//   new BoardModel(
//     image: AppImages.onboarding2,
//     title: "Expert People\n",
//     body: "We have the best in class individuals \n"
//         "working just for you. They are well \n"
//         "trained and capable of handling \n"
//         "anything you need.\n"
//   ),
//  new BoardModel(
//     image: AppImages.vector,
//     body: "All In One Place\n",
//     title: "We have all the household services\n"
//         " you need on a daily basis with\n"
//         " easy access"
//   )
// ];
}

List<BoardModel> getSlides(context) {
  List<BoardModel> board = <BoardModel>[];
  BoardModel Board = BoardModel();

// Item 1
  Board.setImage(onboarding: AppImages.onboarding);
  Board.setTitle(s: "Easy Process");
  Board.setBody(
      s: "Find all your house needs in one place. We provide every service to make your home experience smooth.");
  board.add(Board);

  Board = BoardModel();

// Item 2
  Board.setImage(onboarding: AppImages.onboarding2);
  Board.setTitle(s: "Expert People");
  Board.setBody(
      s: "We have the best in class individuals working just for you. They are well trained and capable of handling anything you need.");
  board.add(Board);

  Board = BoardModel();

// Item 3
  Board.setImage(onboarding: AppImages.vector);
  Board.setTitle(s: "All In One Place");
  Board.setBody(
      s: "We have all the household services you need on a daily basis with easy access");
  board.add(Board);

  Board = BoardModel();
  return board;
}
