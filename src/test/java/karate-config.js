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
    apiToken : 'BQCewB8uPQqWy0C65qmQFSqvrwKNwSNlkNsYk-TouJsnLEmV6heUbkAEjWtURiyQPdx3hLWWaXbSRaBjwGpMIt5AQsp7wvvHz3T2Cg82LuDOxeYRRKs6d2zioNRecGS-iF7xLO7FNmxDZvO8e0LnJSNCkDNFtB1EVh70KZWRm_xX-sot-bO72I3xqUJ4p-Ri9iNmgtIQeU7PQrtq0lD0AAG34aiiUx5Ce2HTfQhpFcvMwHcCJBEmhcEccxqqmSeJwh_Bmhm1zhekWk64SlpAt2vxSflmhwt36gDbysBYjg',
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