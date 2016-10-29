package com.twitter.android.av;

import asp;
import bvj;
import com.twitter.config.d;
import com.twitter.library.av.playback.be;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.ar;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class ae implements asp {
    Set<String> a;

    public ae() {
        bvj.a(this);
    }

    public boolean a(Tweet tweet) {
        return b(be.m(tweet));
    }

    public boolean b(long j) {
        if (this.a == null) {
            b();
        }
        return this.a.contains(String.valueOf(j));
    }

    private void b() {
        List<String> c = d.c("media_autoplay_publisher_blacklist");
        ar d = ar.d();
        for (String c2 : c) {
            d.c(c2);
        }
        this.a = (Set) d.q();
    }

    public void a(long j) {
        b();
    }

    public void a() {
        bvj.b(this);
    }
}
