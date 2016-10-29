package com.twitter.library.av.playback;

import com.twitter.model.core.Tweet;
import defpackage.bps;

/* compiled from: Twttr */
public final class bw extends cu {
    private final String c;

    public bw(Tweet tweet, String str) {
        super(tweet);
        this.c = str;
    }

    public bps a() {
        return new bx(this);
    }
}
