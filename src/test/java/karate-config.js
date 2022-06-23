function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env : env,
    webUrl : 'https://open.spotify.com',
    apiUrl : 'https://api.spotify.com',
    apiUserID : '31yxpem4knstf7hbpps3pmwjiqoe',
    apiToken : 'BQAg387kkB53PXwBsJFzf1qS8bWGp-wCdi6gjSjnGNMWvHnkzv6qsr_QTQL7z6Ivkddl_VtWD6x9vIADjNoE77zBTr1lRDlZDAYeao-oXEOOEJZ-1iJeZmwxoRXoSgiFac8pFBVD3DMi7D5WpF6wmMQvK4VXh-kmtsSeAVBbuC6jFRe9P4asnAgMu_GjfGnzu6ValqYgPTH-v-Im3fc9rYw3FtyTKH2RsZ_qj5E1DY_2CQ8h00oiZYxN_N-Vqbfs7UE7tGGVZpRaxwiFVH-DsQ',
    cookiesClose : "//*[@class='onetrust-close-btn-handler onetrust-close-btn-ui banner-close-button ot-close-icon']",
    email : 'seleniumprojemail@gmail.com',
    password : 'P@$$w0rd..!',
    createPlaylist : "//*[@data-testid='create-playlist-button']",
    playlistNameChange : ".wCkmVGEQh3je1hrbsFBY",
    changePlaylistName : "//*[@placeholder='Add a name']",
    savePlaylistName : "//*[@data-testid='playlist-edit-details-save-button']",
    dashboardLoginButton : "//*[@data-testid='login-button']",
    loginUsername : "#login-username",
    loginPassword : "#login-password",
    loginButton : "#login-button",
    playlistName : "MentorLabs Challange",
    searchButton : "//*[@role='searchbox']",
    songName : "Daft Punk",
    addToPlaylist : "//*[@data-testid='add-to-playlist-button']",
    playButtonOnPlaylistPage : "//*[@data-testid='play-button']",
    apiSongName : 'Bohemian Rhapsody',
    queryParams : '{q:"Bohemian Rhapsody",type:"track"}',
    songNamePath : "$.['tracks']['items'][0]['uri']",
    goToPlaylist : "//span[text()='MentorLabs Faz2']",
    hibritSongName : "The Final Countdown",
    lists : "//h3[text()='Listeler']",
    top50Turkey :"//*[text()='En İyi 50 - Türkiye']",
    favoriteSongs :".bFQ9NOIn1bDs8tTH0ebQ",
    top50Global :"//*[text()='En İyi 50 - Global']",
    endToEndPlaylist:"//*[text()='MentorLabs EndToEnd']",
    dashboardSearchButton :"//span[text()='Ara']",
    dashboardAccountButton : "//*[@data-testid='user-widget-avatar']",
    dashboardMyAccount : "//*[text()='Profil']",
    profileEdit : "//*[@title='Edit details']",
    usernameEdit : "#user-edit-name",
    newUsername : "MentorLabs Challange",
    saveUsername : "//*[text()='Kaydet']",
    dashboardLogoutButton : "//*[text()='Oturumu kapat']",
}
  if (env == 'dev') {
  } else if (env == 'e2e') {
  }
  return config;
}