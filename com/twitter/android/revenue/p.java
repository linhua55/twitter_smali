package com.twitter.android.revenue;

import android.support.annotation.VisibleForTesting;
import com.google.android.exoplayer.extractor.ts.PtsTimestampAdjuster;
import com.twitter.android.timeline.l;
import com.twitter.library.widget.TweetView;
import com.twitter.util.al;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.object.ObjectUtils;
import ctc;
import cto;
import cuj;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class p {
    @VisibleForTesting
    final ctc<TweetView, l> a;
    private final Set<TweetView> b;
    private final d c;
    private final cuj<TweetView> d;
    private long e;

    public p(d dVar) {
        this.a = new q(this);
        this.b = MutableSet.a();
        this.d = new r(this);
        this.e = PtsTimestampAdjuster.DO_NOT_OFFSET;
        this.c = dVar;
    }

    public void a(TweetView tweetView) {
        this.b.add(tweetView);
    }

    public boolean a() {
        return !this.b.isEmpty() && al.b() >= this.e;
    }

    public void b() {
        this.e = PtsTimestampAdjuster.DO_NOT_OFFSET;
    }

    public void c() {
        if (!this.b.isEmpty()) {
            Long l = (Long) cto.a(cto.b(this.b, new s(this)), ObjectUtils.c());
            this.e = TimeUnit.SECONDS.toMillis(l.longValue()) + al.b();
        }
    }

    public void d() {
        if (!this.b.isEmpty()) {
            Object c = cto.c(cto.a(this.b, this.d));
            cto.c(cto.a(c, this.a));
            this.b.removeAll(c);
        }
    }

    public com.twitter.app.common.list.p e() {
        return new t(this);
    }
}
