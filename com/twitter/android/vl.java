package com.twitter.android;

import com.twitter.android.av.av;
import com.twitter.library.av.playback.be;
import com.twitter.library.client.Session;
import com.twitter.model.av.n;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.x;
import rx.o;
import um;

/* compiled from: Twttr */
public class vl extends an<Tweet> {
    protected /* synthetic */ o b(Session session, Object obj) {
        return a(session, (Tweet) obj);
    }

    public vl(um umVar) {
        super(umVar);
    }

    protected o<n> a(Session session, Tweet tweet) {
        x b = b(session, tweet);
        return b.c() ? this.a.a(session, ((Long) b.b()).longValue()) : null;
    }

    private static x<Long> b(Session session, Tweet tweet) {
        long g = session.g();
        MediaEntity X = tweet.X();
        Object obj = (av.a() && X != null && tweet.s == g && be.a(tweet, X) == g) ? 1 : null;
        if (obj != null) {
            return x.a(Long.valueOf(X.c));
        }
        return x.a();
    }
}
