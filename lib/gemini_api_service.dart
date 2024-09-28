import 'dart:async';

import 'package:google_generative_ai/google_generative_ai.dart';

Future<String?> geminiApi(String prompt) async {
// Access your API key as an environment variable (see "Set up your API key" above)
  final apiKey = "AIzaSyBwQcFXUCsYCprUNFk19YYNUHOZTe4nP9U";
  final model = GenerativeModel(
    model: 'gemini-1.5-flash',
    apiKey: apiKey,
  );
  print("This is the prompt : " + prompt);
  final response = await model.generateContent([Content.text(prompt)]);
  print(response.text);
  return response.text!;
}

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<String> callGeminiAPI(String prompt) async {
//   const apiKey =
//       'AIzaSyBwQcFXUCsYCprUNFk19YYNUHOZTe4nP9U'; // Replace with your actual API key

//   final url = Uri.parse('https://api.gemini.ai/v1/completions');
//   final headers = {
//     'Content-Type': 'application/json',
//     'Authorization': 'Bearer $apiKey',
//   };
//   final body = jsonEncode({
//     'prompt': prompt,
//     'model': 'gemini-1.5', // Adjust the model name as needed
//     'temperature': 0.7, // Adjust the temperature as needed
//     'max_tokens': 256, // Adjust the maximum token length as needed
//   });

//   final response = await http.post(url, headers: headers, body: body);

//   if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     return data['choices'][0]['text'].toString();
//   } else {
//     throw Exception('Failed to get response from Gemini API');
//   }
// }

// void main() async {
//   const prompt = 'Tell me a joke';
//   final response = await callGeminiAPI(prompt);
//   print(response);
// }
