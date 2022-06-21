Feature: SpotifyWebTest

  Background:
    * configure driver = {type :'chromedriver' , showDriverLog : false, showBrowserLog : false, executable : 'C:/opt/chromedriver.exe'}
    * configure retry = { count: 10, interval: 1000 }

  Scenario: MentorLabsUiTest
    * driver webUrl
    * maximize()
    * retry().click(dashboardLoginButton)
    * input(loginUsername,email)
    * input(loginPassword,password)
    * click(loginButton)
    * retry().click(createPlaylist)
    * retry().click(playlistNameChange)
    * input(changePlaylistName,playlistName)
    * retry().click(savePlaylistName)
    * waitFor(searchButton)
    * input(searchButton,songName)
    * retry().click(addToPlaylist)
    * delay(5000)