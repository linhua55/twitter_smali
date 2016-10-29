package com.twitter.android.moments.viewmodels;

import com.twitter.library.av.playback.be;
import com.twitter.model.core.Tweet;
import com.twitter.util.math.Size;
import com.twitter.util.object.b;

/* compiled from: Twttr */
final class i implements b<Tweet, Size> {
    i() {
    }

    public Size a(Tweet tweet) {
        return be.a(tweet, 300);
    }
}
