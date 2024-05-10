
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

var currentApiKey = 1;

const String kDioErrorTag = "onError";
const String kDioResponseTag = "onResponse";
const String kDioRequestTag = "onRequest";

String bullet = "\u2022 ";

const kDefaultDashboardBg = "https://cdn.intra.42.fr/coalition/cover/77/Pandora_BG.jpg";