Feature: SpotifyWebTest

  Background:
    * configure driver = {type :'chromedriver' , showDriverLog : false, showBrowserLog : false, executable : 'C:/opt/chromedriver.exe'}
    * configure retry = { count: 10, interval: 1000 }
  Scenario: MentorLabsUiTest
    Given driver webUrl
    * maximize()
    When click(dashboardLoginButton)
    And input(loginUsername,email)
    And input(loginPassword,password)
    And click(loginButton)
    And retry().click(createPlaylist)
    And retry().click(playlistNameChange)
    And input(changePlaylistName,playlistName)
    And retry().click(savePlaylistName)
    And waitFor(searchButton)
    And input(searchButton,songName)
    And retry().click(addToPlaylist)
    * delay(5000)