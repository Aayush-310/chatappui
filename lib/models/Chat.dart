class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;
  Chat({
    //required at every value
    this.name = "",
    this.lastMessage = "",
    this.image = "",
    this.time = "",
    this.isActive = false,
  });
}

List chatData = [
  Chat(
      name: "Aayush",
      lastMessage: "Parajuli",
      image: "/assets/images/user_2.png",
      time: "2 min ago",
      isActive: false),
  Chat(
      name: "hari",
      lastMessage: "shyam",
      image: "assets/images/user_3.png",
      time: "2 min ago ",
      isActive: false),
  Chat(
      name: "John",
      lastMessage: "hello nigga",
      image: "assets/images/user_4.png",
      time: "6 months ago",
      isActive: false),
  Chat(
      name: "John wick",
      lastMessage: "yo",
      image: "assets/images/user_4.png",
      time: "6 months ago",
      isActive: true),
];
