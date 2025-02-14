class LLMModel {
  const LLMModel({
    required this.title,
    required this.model,
    required this.provider,
  });

  final String title;
  final String model;
  final String provider;
}

class LLMModels {
  static const defaultModel = LLMModels.gpt4o;

  static const LLMModel gpt4o = LLMModel(
    title: 'GPT-4o',
    model: 'openai.gpt-4o-2024-08-06',
    provider: 'OpenAI',
  );

  static const LLMModel gpt4Mini = LLMModel(
    title: 'GPT-4o Mini',
    model: 'openai.gpt-4o-mini',
    provider: 'OpenAI',
  );

  static const LLMModel claudeSonnet = LLMModel(
    title: 'Claude Sonnet',
    model: 'anthropic.claude-3-5-sonnet-20240620-v1:0',
    provider: 'Anthropic',
  );

  static const LLMModel claudeSonnetv2 = LLMModel(
    title: 'Claude Sonnet v2',
    model: 'anthropic.claude-3-5-sonnet-20241022-v2:0',
    provider: 'Anthropic',
  );

  static const LLMModel claudeHaiku = LLMModel(
    title: 'Claude Haiku',
    model: 'anthropic.claude-3-haiku-20240307-v1:0',
    provider: 'Anthropic',
  );

  static const LLMModel geminiFlash = LLMModel(
    title: 'Gemini Flash',
    model: 'google.gemini-1.5-flash-002',
    provider: 'Google',
  );

  static const LLMModel geminiPro = LLMModel(
    title: 'Gemini Pro',
    model: 'google.gemini-1.5-pro-002',
    provider: 'Google',
  );

  static const LLMModel geminiProExperimental = LLMModel(
    title: 'Gemini Experimental',
    model: 'google.gemini-pro-experimental',
    provider: 'Google',
  );

  static const List<LLMModel> all = [
    gpt4o,
    gpt4Mini,
    claudeSonnet,
    claudeSonnetv2,
    claudeHaiku,
    geminiFlash,
    geminiPro,
    geminiProExperimental,
  ];

  static LLMModel fromModel(String model) {
    return all.firstWhere(
      (element) => element.model == model,
      orElse: () => defaultModel,
    );
  }
}
