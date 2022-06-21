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
    * retry().click(dashboardLoginButton)
    * input(loginUsername,email)
    * input(loginPassword,password)
    * retry().click(loginButton)
    * path "v1/users/"+userID+"/playlists"
    * header Authorization = 'Bearer '+apiToken
    * request {"name": "MentorLabs Faz2", "description": "Challange Accepted","public": true }
    * method post
    * def id = response.id
    * path 'v1/search'
    * header Authorization = 'Bearer '+apiToken
    * params searchParams
    * method get
    * def uri = response.tracks.items[0].uri
    * status 200
    * path "v1/playlists/"+id+"/tracks"
    * header Authorization = 'Bearer '+apiToken
    * request {uris:[#(uri)]}
    * method post
    * status 201
    * retry().click(goToPlaylist)
    * retry().click(playButtonOnPlaylistPage)
    * delay(5000)
    * path 'v1/me/player/currently-playing'
    * header Authorization = 'Bearer '+apiToken
    * method get
    * def recentlyPlaying = karate.jsonPath(response, "$.['item'].['name']")
    * match recentlyPlaying == hibritSongName