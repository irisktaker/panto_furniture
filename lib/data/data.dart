import 'package:panto_furniture/models/best_selling_products.dart';
import 'package:panto_furniture/models/choosing_us.dart';
import 'package:panto_furniture/models/reviews.dart';

List<ChoosingUs> whyChoosingUs = [
  ChoosingUs(
    title: 'Luxury facilities',
    description:
        'The advantage of hiring a workspace with us is that givees you comfortable service and all-around facilities.',
  ),
  ChoosingUs(
    title: 'Affordable Price',
    description:
        'You can get a workspace of the highst quality at an affordable price and still enjoy the facilities that are oly here.',
  ),
  ChoosingUs(
    title: 'Many Choices',
    description:
        'We provide many unique work space choices so that you can choose the workspace to your liking.',
  ),
];

List<BestSellingProducts> bestSellingProducts = [
  BestSellingProducts(
    productType: "Chair",
    productName: "Sakarias Armchair",
    productImage: "assets/images/img_1.png",
    price: 392,
  ),
  BestSellingProducts(
    productType: "Chair",
    productName: "Baltsar Chair",
    productImage: "assets/images/img_2.png",
    price: 299,
  ),
  BestSellingProducts(
    productType: "Chair",
    productName: "Anjay Chair",
    productImage: "assets/images/img_3.png",
    price: 519,
  ),
  BestSellingProducts(
    productType: "Chair",
    productName: "Nyantuy Chair",
    productImage: "assets/images/img_4.png",
    price: 921,
  ),
];

List<Reviews> reviews = [
  Reviews(
    image: "assets/images/img_12.png",
    bgImage: "assets/images/img_9.png",
    title: "Bang Upin",
    subtitle: "Pedagang Asongan",
    description:
        "“Terimakasih banyak, kini ruanganku menjadi lebih mewah dan terlihat mahal“",
  ),
  Reviews(
    image: "assets/images/img_14.png",
    bgImage: "assets/images/img_10.png",
    title: "Ibuk Sukijan",
    subtitle: "Ibu Rumah Tangga",
    description:
        "“Makasih Panto, aku sekarang berasa tinggal di apartment karena barang-barang yang terlihat mewah“",
  ),
  Reviews(
    image: "assets/images/img_15.png",
    bgImage: "assets/images/img_11.png",
    title: "Mpok Ina",
    subtitle: "Karyawan Swasta",
    description:
        "“Sangat terjangkau untuk kantong saya yang tidak terlalu banyak“",
  ),
];
