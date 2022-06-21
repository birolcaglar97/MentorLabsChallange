Feature: SpotifyEndToEnd

  Background:
    # UserID ve Token giriniz
    * url apiUrl
    * def userID = apiUserID
    * configure driver = {type :'chromedriver' , showDriverLog : false, showBrowserLog : false, executable : 'C:/opt/chromedriver.exe'}
    * configure retry = { count: 10, interval: 1000 }

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
    * def tracksId = { id1:#(response.items[0].track.uri.split(':')[2]) ,id2:#(response.items[1].track.uri.split(':')[2]), id3:#(response.items[2].track.uri.split(':')[2]), id4:#(response.items[3].track.uri.split(':')[2]), id5:#(response.items[4].track.uri.split(':')[2]) }
    * path 'v1/me/tracks'
    * header Authorization = 'Bearer '+apiToken
    * def body = {"ids": [#(tracksId.id5),#(tracksId.id4),#(tracksId.id3),#(tracksId.id2),#(tracksId.id1)] }
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
    * delay(10000)
    * retry().click(dashboardAccountButton)
    * retry().click(dashboardLogoutButton)