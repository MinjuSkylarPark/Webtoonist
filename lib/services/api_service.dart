import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  void getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      return;
    }
    throw Error();
    //get이라는 네임이 너무 흔하기 때문에 특정한 이름을 정해준다
    //http.get을 사용하고 uri타입을 매개변수로 전달해줘야한다
  }
}
