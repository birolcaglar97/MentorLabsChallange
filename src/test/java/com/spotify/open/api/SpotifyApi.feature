Feature: SpotifyApiTest

  Background:
    # UserID ve Token giriniz
    * url apiUrl
    * def userID = "31yxpem4knstf7hbpps3pmwjiqoe"
    * def apiToken = "BQCp61MuSYMoTOiKqPCwYE34VfkItoB1jgptVNkG2Ts9HgTBWzTV04omBZWg82SmqsWv08sN7arbuQNUOb2d-U1Hdn1w6Me0edzBaryRBaFKSirH-zt3YSUXyXLzE-Oc6KidlYdKILRQ2WLTyXUC7jdTlARCI-kOhh-ZfkcWAi59VyQCgBeEu_A6KzzwEk8KQyoJMe5s_O_gPyOPEPmf8w7NZ4trypDivqPvV72h6Xm2wcyVs7PquQ7LPNMbyO8hCYW5M4heuQ6YNrGuGT8hCy7Ofg"
    * def size = function(o){ return o.size() }
    * def random = function(max){ return Math.floor(Math.random() * max) }
    * def searchParams = {q:'Bohemian Rhapsody',type:'track'}

  @Smoke
  Scenario: MentorLabs Api Test
    Given path "v1/users/"+userID+"/playlists"
    And header Authorization = 'Bearer '+apiToken
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And request {"name": "MentorLabs Challange Api", "description": "Challange Accepted","public": true }
    When method post
    * def id = response.id

    Given path 'v1/search'
    And header Authorization = 'Bearer '+apiToken
    And header Content-type = 'application/json'
    And header Accept = 'application/json'

    And params searchParams
    When method get
    * def size = karate.sizeOf(karate.jsonPath(response,"$.['tracks']['items'][*]"))
    * def uri = karate.jsonPath(response,"$.['tracks']['items']["+random(size)+"]['uri']")
    Then status 200

    Given path "v1/playlists/"+id+"/tracks"
    And header Authorization = 'Bearer '+apiToken
    And header Content-type = 'application/json'
    And header Accept = 'application/json'
    And request {uris:[#(uri)]}
    When method post
    Then status 201