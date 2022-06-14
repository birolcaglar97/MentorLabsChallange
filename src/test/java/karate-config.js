function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    webUrl: 'https://open.spotify.com',
    apiUrl: 'https://api.spotify.com',
    email: 'seleniumprojemail@gmail.com',
    password: 'P@$$w0rd..!',
    createPlaylist: "//*[@data-testid='create-playlist-button']",
    playlistNameChange: ".wCkmVGEQh3je1hrbsFBY",
    changePlaylistName: "//*[@placeholder='Add a name']",
    savePlaylistName: "//*[@data-testid='playlist-edit-details-save-button']",
    dashboardLoginButton: "//*[@data-testid='login-button']",
    loginUsername: "#login-username",
    loginPassword: "#login-password",
    loginButton: "#login-button",
    playlistName: "MentorLabs Challange",
    searchButton: "//*[@role='searchbox']",
    songName: "Daft Punk",
    addToPlaylist: "//*[@data-testid='add-to-playlist-button']",
    playButtonOnPlaylistPage: "//*[@data-testid='play-button']",
    apiSongName:'Bohemian Rhapsody',
    queryParams:'{q:"Bohemian Rhapsody",type:"track"}',
    songNamePath: "$.['tracks']['items'][0]['uri']"
    }
  if (env == 'dev') {
  } else if (env == 'e2e') {
  }
  return config;
}