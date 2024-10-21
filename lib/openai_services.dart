import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class OpenAIService {
  Future<String> isArtPromptAPI(String prompt) async {
    try {
      final String openAIAPIKey = dotenv.env['OPENAI_API_KEY'] ?? '';
      final response = await http.post(
          Uri.parse("https://api.openai.com/v1/chat/completions"),
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $openAIAPIKey"
          },
          body: jsonEncode({
            "model": "gpt-3.5-turbo",
            "messages": [
              {
                "role": "user",
                "content":
                    "Does this message want to generate an AI picture, image, art or anything similar? $prompt . Simply answer with a yes or no."
              }
            ]
          }));
      final jsonResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        String assistantReply =
            jsonResponse['choices'][0]['message']['content'];
        print('AI Response: $assistantReply');
        return assistantReply;
      } else {
        print('Failed with status code: ${response.statusCode}');
        return "Error: ${jsonResponse['error']['message']}";
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> chatGPTAPI(String prompt) async {
    return "CHATGPT";
  }

  Future<String> dallEAPI(String prompt) async {
    return "DALL-E";
  }
}
