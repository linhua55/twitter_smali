package com.twitter.android;

import cgl;
import com.twitter.library.av.playback.be;
import com.twitter.library.media.util.q;
import com.twitter.media.request.b;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class lz implements jx {
    public final long a;
    public final Tweet b;
    public final float c;
    public final boolean d;
    public final MediaEntity e;
    public cgl f;

    lz(long j, Tweet tweet, Size size, MediaEntity mediaEntity) {
        this.a = j;
        this.b = tweet;
        this.c = size.e();
        boolean z = be.d(tweet) || tweet.L();
        this.d = z;
        this.e = mediaEntity;
    }

    lz(long j, Tweet tweet, Size size, cgl cgl) {
        this(j, tweet, size, tweet.W());
        this.f = cgl;
    }

    public b a() {
        if (this.f != null) {
            return q.a(this.f);
        }
        if (this.e != null) {
            return q.a(this.e);
        }
        return null;
    }

    public long c() {
        return this.a;
    }

    public Tweet d() {
        return this.b;
    }

    public MediaEntity e() {
        return this.e;
    }
}
