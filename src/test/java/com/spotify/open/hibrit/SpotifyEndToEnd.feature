Feature: SpotifyEndToEnd

  Background:
    # UserID ve Token giriniz
    * url apiUrl
    * def userID = apiUserID
    * configure driver = {type :'chromedriver' , showDriverLog : false, showBrowserLog : false, executable : 'src/test/resources/chromedriver.exe'}
    * configure retry = { count: 10, interval: 1000 }
    * def size = function(o){ return o.size() }
    * def random = function(max){ return Math.floor(Math.random() * max) }

  Scenario: MentorLabs Faz2 End to End
    * driver webUrl
    * maximize()
    * retry().click(dashboardLoginButton)
    * retry().input(loginUsername,email)
    * retry().input(loginPassword,password)
    * retry().click(loginButton)
    * retry().click(dashboardSearchButton)
    * retry().click(lists)
    * retry().click(top50Turkey)
    * def playlistId = driver.url.split('/')[4]
    * path 'v1/playlists/'+playlistId+'/tracks'
    * header Authorization = 'Bearer '+apiToken
    * method get
    * def id =  response.items[0].track.id
    * def id2 =  response.items[1].track.id
    * def id3 =  response.items[2].track.id
    * def id4 =  response.items[3].track.id
    * def id5 =  response.items[4].track.id
    * def body = { "ids": [ #(id1),#(id2),#(id3),#(id4),#(id5) ] }
    * path 'v1/me/tracks'
    * header Authorization = 'Bearer '+apiToken
    * request body
    * method put
    * retry().click(cookiesClose)
    * retry().click(dashboardAccountButton)
    * retry().click(dashboardMyAccount)
    * retry().click(profileEdit)
    * clear(usernameEdit)
    * retry().input(usernameEdit,newUsername)
    * retry().click(saveUsername)
    * retry().click(favoriteSongs)
    * retry().click(playButtonOnPlaylistPage)
    * path 'v1/me/tracks'
    * header Authorization = 'Bearer '+apiToken
    * method get
    * def favTracks = response
    * def size = karate.sizeOf(karate.jsonPath(favTracks,"$.['items'][*]"))
    * def uri1 =  favTracks.items[random(size-1)].track.uri
    * def uri2 =  favTracks.items[random(size-1)].track.uri
    * def uri3 =  favTracks.items[random(size-1)].track.uri
    * path "v1/users/"+userID+"/playlists"
    * header Authorization = 'Bearer '+apiToken
    * request {"name": "MentorLabs EndToEnd", "description": "Challange Accepted","public": true }
    * method post
    * def playlistId = response.id
    * path "v1/playlists/"+playlistId+"/tracks"
    * header Authorization = 'Bearer '+apiToken
    * request {uris:[#(uri1),#(uri2),#(uri3)]}
    * method post
    * status 201
    * retry().click(endToEndPlaylist)
    * refresh()
    * retry().click(playButtonOnPlaylistPage)
    * delay(25000)
    * retry().click(dashboardAccountButton)
    * retry().click(dashboardLogoutButton)
