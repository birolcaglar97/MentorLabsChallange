Feature: SpotifyApiTest

  Background:
    # UserID ve Token giriniz
    * url apiUrl
    * def userID = apiUserID
    * def searchParams = {q:'The Final Countdown',type:'track'}
    * configure driver = {type :'chromedriver' , showDriverLog : false, showBrowserLog : false, executable : 'C:/opt/chromedriver.exe'}
    * configure retry = { count: 10, interval: 1000 }

  Scenario: MentorLabsFaz2
    Given driver webUrl
    * maximize()
    When retry().click(dashboardLoginButton)
    And input(loginUsername,email)
    And input(loginPassword,password)
    And click(loginButton)
    And path "v1/users/"+userID+"/playlists"
    And header Authorization = 'Bearer '+apiToken
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And request {"name": "MentorLabs Faz2", "description": "Challange Accepted","public": true }
    And method post
    * def id = response.id
    And path 'v1/search'
    And header Authorization = 'Bearer '+apiToken
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And params searchParams
    And method get
    * def uri = response.tracks.items[0].uri
    Then status 200
    And path "v1/playlists/"+id+"/tracks"
    And header Authorization = 'Bearer '+apiToken
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And request {uris:[#(uri)]}
    And method post
    Then status 201
    And retry().click(goToPlaylist)
    And retry().click(playButtonOnPlaylistPage)
    * delay(5000)
    And path 'v1/me/player/currently-playing'
    And header Authorization = 'Bearer '+apiToken
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And method get
    * def recentlyPlaying = karate.jsonPath(response, "$.['item'].['name']")
    Then match recentlyPlaying == hibritSongName