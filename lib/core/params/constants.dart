
const kBaseUrl = 'https://intra.42.fr';
const kApiBaseUrl2 = 'https://api.intra.42.fr';

const kApiBaseUrl = 'https://api.intra.42.fr/v2';
String kSignInEndpoint = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-21237aece88c955fa32f7df74461d0e7837a51545d840c40bc97f42e2fa26d5f&redirect_uri=https%3A%2F%2Fzanime.app&response_type=code";
String kRedirectUrl = "https://zanime.app";
String kSecret = "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";
String kClientId = "u-s4t2ud-21237aece88c955fa32f7df74461d0e7837a51545d840c40bc97f42e2fa26d5f";

const String kDioErrorTag = "onError";
const String kDioResponseTag = "onResponse";
const String kDioRequestTag = "onRequest";

String bullet = "\u2022 ";

const kDefaultDashboardBg = "https://cdn.intra.42.fr/coalition/cover/77/Pandora_BG.jpg";

void reset(){
  kSignInEndpoint = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-21237aece88c955fa32f7df74461d0e7837a51545d840c40bc97f42e2fa26d5f&redirect_uri=https%3A%2F%2Fzanime.app&response_type=code";
  kRedirectUrl = "https://zanime.app";
  kSecret = "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";
  kClientId = "u-s4t2ud-21237aece88c955fa32f7df74461d0e7837a51545d840c40bc97f42e2fa26d5f";
}