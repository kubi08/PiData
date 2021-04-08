class PromotionModel{
  final int id;
  final String text;

  PromotionModel({this.id, this.text});

  static List<PromotionModel> list = [
    PromotionModel(
      id: 1,
      text: "Dönüştürmek istediğiniz para birimini giriniz.",
    ),
    PromotionModel(
      id: 2,
      text: "Dönüştürdüğünüz para biriminin grafiğini görebilirsiniz.",
    ),
    PromotionModel(
      id: 3,
      text: "Döviz kurlarını mobil uygulama ile anlık takip edebilirsiniz.",
    ),
  ];
}