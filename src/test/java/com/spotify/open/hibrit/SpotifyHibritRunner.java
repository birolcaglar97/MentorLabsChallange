package com.spotify.open.hibrit;

import com.intuit.karate.junit5.Karate;

public class SpotifyHibritRunner {
    @Karate.Test
    Karate testHibrit() {
        return Karate.run("SpotifyHibrit.feature").relativeTo(getClass());
    }
    @Karate.Test
    Karate testEndToEnd() {
        return Karate.run("SpotifyEndToEnd.feature").relativeTo(getClass());
    }
}
