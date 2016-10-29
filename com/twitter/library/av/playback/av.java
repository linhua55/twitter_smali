package com.twitter.library.av.playback;

import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class av {
    public au a(Tweet tweet) {
        return a(new TweetAVDataSource(tweet));
    }

    public au a(AVDataSource aVDataSource) {
        return new au(aVDataSource);
    }
}
