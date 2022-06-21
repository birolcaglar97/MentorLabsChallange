package com.spotify.open;

import com.intuit.karate.junit5.Karate;

public class SpotifyRunner {
    @Karate.Test
    Karate testApi() {
        return Karate.run("api/SpotifyApi.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testUi() {
        return Karate.run("ui/SpotifyUi.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testHibrit() {
        return Karate.run("hibrit/SpotifyHibrit.feature").relativeTo(getClass());
    }
    @Karate.Test
    Karate testEndToEnd() {
        return Karate.run("hibrit/SpotifyEndToEnd.feature").relativeTo(getClass());
    }

}
