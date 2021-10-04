import 'dart:convert';
import 'package:http/http.dart';
import 'package:uts_project/model/article_model.dart';

class ApiService {
  final endPointUrl = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=e0789acc91e64eb491c26f53e02ceeba';

  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      //this line will allow us to get the different articles from the json file and putting them into a list
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}