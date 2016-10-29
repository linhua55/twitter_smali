package com.twitter.android.moments.data;

import com.twitter.library.av.playback.be;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class w {
    public static String a(Tweet tweet, long j, String str) {
        MediaEntity a = tweet.w.d.a(j);
        if (a != null && aj.b(a.l)) {
            return a.l;
        }
        ImageSpec o = be.o(tweet);
        if (o == null || !aj.b(o.c)) {
            return str;
        }
        return o.c;
    }
}
