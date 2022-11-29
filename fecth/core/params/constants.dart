
const kBaseUrl = 'https://intra.42.fr';
const kApiBaseUrl2 = 'https://api.intra.42.fr';

var kApiBaseUrl = 'https://api.intra.42.fr/v2';
var kSignInEndpoint = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-21237aece88c955fa32f7df74461d0e7837a51545d840c40bc97f42e2fa26d5f&redirect_uri=https%3A%2F%2Fzanime.app&response_type=code";
var kRedirectUrl = "https://zanime.app";
var kSecret = "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";
var kClientId = "u-s4t2ud-21237aece88c955fa32f7df74461d0e7837a51545d840c40bc97f42e2fa26d5f";


void updateCurrent()
{
  // if (currentApiKey == 0) {
  //   kClientId = "u-s4t2ud-7239540dfb5d5a99ccb9c2a774c45aa2978d8a59d7e60462dae95d4d9e5301b7";
  //   kSecret = "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";
  //   kSignInEndpoint = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-7239540dfb5d5a99ccb9c2a774c45aa2978d8a59d7e60462dae95d4d9e5301b7&redirect_uri=https%3A%2F%2Fzanime.app&response_type=code";
  // }
  if (currentApiKey == 0) {
    kClientId = "u-s4t2ud-39d6ca34279ee593d9992e6613d8194fa0c172a3b32897186c5295de2add21ea";
    kSecret = "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";
    kSignInEndpoint = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-39d6ca34279ee593d9992e6613d8194fa0c172a3b32897186c5295de2add21ea&redirect_uri=https%3A%2F%2Fzanime.app&response_type=code";
  }
  else if (currentApiKey == 1) {
    kClientId = "u-s4t2ud-0e0cce10225261fdc192346f26a4ddeead273ed56e5bf63e002b43c501157531";
    kSecret = "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";
    kSignInEndpoint = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-0e0cce10225261fdc192346f26a4ddeead273ed56e5bf63e002b43c501157531&redirect_uri=https%3A%2F%2Fzanime.app&response_type=code";
  }
  else if (currentApiKey == 2) {
    kClientId = "u-s4t2ud-c89c767ebd39761ad890c229f82b8e75113be7ce4a75b85338e16de69fad5a8d";
    kSecret = "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";
    kSignInEndpoint = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-c89c767ebd39761ad890c229f82b8e75113be7ce4a75b85338e16de69fad5a8d&redirect_uri=https%3A%2F%2Fzanime.app&response_type=code";
  }
  else if (currentApiKey == 3) {
    kClientId = "u-s4t2ud-90139c0ed5b00fca3a0b267c52954d7decba1369327e49de544a93ef1c9d2ab2";
    kSecret = "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";
    kSignInEndpoint = "https://api.intra.42.fr/oauth/authorize?client_id=u-s4t2ud-90139c0ed5b00fca3a0b267c52954d7decba1369327e49de544a93ef1c9d2ab2&redirect_uri=https%3A%2F%2Fzanime.app&response_type=code";
  }
}

var currentApiKey = 0;

const String kDioErrorTag = "onError";
const String kDioResponseTag = "onResponse";
const String kDioRequestTag = "onRequest";

String bullet = "\u2022 ";

const kDefaultDashboardBg = "https://cdn.intra.42.fr/coalition/cover/77/Pandora_BG.jpg";