package com.twitter.library.view;

import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.ap;
import com.twitter.model.core.b;
import com.twitter.model.core.cr;
import com.twitter.model.core.q;
import com.twitter.model.geo.TwitterPlace;
import defpackage.cgl;

/* compiled from: Twttr */
public interface m {
    public static final m r;

    @Deprecated
    void a(cgl cgl);

    void a(MediaEntity mediaEntity);

    void a(ap apVar);

    void a(b bVar);

    void a(cr crVar);

    void a(q qVar);

    void a(TwitterPlace twitterPlace);

    boolean b(cr crVar);

    void d(long j);

    void e(long j);

    static {
        r = new n();
    }
}
