package com.twitter.android;

import cgl;
import com.twitter.library.media.util.q;
import com.twitter.media.request.b;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class jv implements jx {
    public final long a;
    public final Tweet b;
    public final MediaEntity c;
    public cgl d;

    jv(long j, Tweet tweet, MediaEntity mediaEntity) {
        this.a = j;
        this.b = tweet;
        this.c = mediaEntity;
    }

    jv(long j, Tweet tweet, cgl cgl) {
        this(j, tweet, tweet.W());
        this.d = cgl;
    }

    public float a() {
        if (this.d != null) {
            ImageSpec r = this.d.r();
            if (r != null) {
                return Size.a(r.d.x, r.d.y).e();
            }
        } else if (this.c != null) {
            return this.c.n.e();
        }
        return 0.0f;
    }

    public b b() {
        if (this.d != null) {
            return q.a(this.d);
        }
        if (this.c != null) {
            return q.a(this.c);
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
        return this.c;
    }
}
