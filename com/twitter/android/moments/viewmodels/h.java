package com.twitter.android.moments.viewmodels;

import com.twitter.library.av.playback.be;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.b;
import com.twitter.util.object.e;

/* compiled from: Twttr */
final class h implements b<Tweet, com.twitter.media.request.b> {
    h() {
    }

    public com.twitter.media.request.b a(Tweet tweet) {
        return (com.twitter.media.request.b) e.a(be.w(tweet));
    }
}
