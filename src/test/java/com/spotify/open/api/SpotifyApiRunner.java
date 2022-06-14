package com.spotify.open.api;

import com.intuit.karate.junit5.Karate;

public class SpotifyApiRunner {
    @Karate.Test
    Karate testApi() {
        return Karate.run("SpotifyApi.feature").relativeTo(getClass());
    }
}
