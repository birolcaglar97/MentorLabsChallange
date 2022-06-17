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
    apiUserID:'31yxpem4knstf7hbpps3pmwjiqoe',
    apiToken: 'BQBHfst8ueRnuplB5nlF7fCr5_8FSA9Yv-gi4BEH7lm9eVI69yzhuBzjnfLyR6Tz3VGy8UpDja_Fm7ixQGg0m_Iy6gVEAI4kjNWTvkDn5C5GDiUNlIdWkq2rBl2HnVhCK9yei3xAvGmyIKUMlSpnJ3BkmYXAa7gESJGfU22H614XQpUMBv2dwafJpa4hqRcqRgdJQh1_S_YOygunZWh-qqwSFvSYvpAH1u34TtqWSvcP3VTFWpfaiarEG80YN4a2_8bxTwDsK1uKDkVakGf8VeR4hOIvQKE',
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
    songNamePath: "$.['tracks']['items'][0]['uri']",
    goToPlaylist:"//span[text()='MentorLabs Faz2']",
    hibritSongName : "The Final Countdown"
    }
  if (env == 'dev') {
  } else if (env == 'e2e') {
  }
  return config;
}