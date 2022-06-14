package com.spotify.open.ui;

import com.intuit.karate.junit5.Karate;

public class SpotifyUiRunner {
    @Karate.Test
    Karate testUi() {
        return Karate.run("SpotifyUi.feature").relativeTo(getClass());
    }
}
