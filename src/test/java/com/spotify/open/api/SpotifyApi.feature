Feature: SpotifyApiTest

  Background:
    # UserID ve Token giriniz
    * url apiUrl
    * def userID = apiUserID
    * def size = function(o){ return o.size() }
    * def random = function(max){ return Math.floor(Math.random() * max) }
    * def searchParams = {q:'Bohemian Rhapsody',type:'track'}

  @Smoke
  Scenario: MentorLabs Api Test
    Given path "v1/users/"+userID+"/playlists"
    And header Authorization = 'Bearer '+apiToken
    And request {"name": "MentorLabs Challange Api", "description": "Challange Accepted","public": true }
    When method post
    * def id = response.id
    Given path 'v1/search'
    And header Authorization = 'Bearer '+apiToken
    And params searchParams
    When method get
    * def size = karate.sizeOf(karate.jsonPath(response,"$.['tracks']['items'][*]"))
    * def uri = karate.jsonPath(response,"$.['tracks']['items']["+random(size)+"]['uri']")
    Then status 200
    Given path "v1/playlists/"+id+"/tracks"
    And header Authorization = 'Bearer '+apiToken
    And request {uris:[#(uri)]}
    When method post
    Then status 201