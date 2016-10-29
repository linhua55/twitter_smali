package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import bqk;
import com.twitter.android.moments.ui.video.b;
import com.twitter.library.av.playback.AVPlayerAttachment;
import com.twitter.library.av.playback.ai;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.n;
import defpackage.any;
import java.util.Set;

/* compiled from: Twttr */
public class df {
    private final Set<b> a;
    private final Set<b> b;
    private final Set<b> c;
    private final Context d;
    private final ai e;
    private final gg f;

    public df(Context context, ai aiVar) {
        this(context, aiVar, new gg());
    }

    @VisibleForTesting
    df(Context context, ai aiVar, gg ggVar) {
        this.f = ggVar;
        this.b = MutableSet.a();
        this.c = MutableSet.a();
        this.a = MutableSet.a();
        this.d = context.getApplicationContext();
        this.e = aiVar;
    }

    public b a(Tweet tweet) {
        b a = this.f.a(this.d, tweet, this.e, bqk.d);
        this.b.add(a);
        return a;
    }

    private b c(Tweet tweet) {
        b a = this.f.a(this.d, tweet, this.e, bqk.d);
        this.c.add(a);
        return a;
    }

    public b b(Tweet tweet) {
        b c = c(tweet);
        c.a();
        return c;
    }

    public void a(b bVar) {
        a(bVar, true);
    }

    public void a(b bVar, boolean z) {
        bVar.e();
        AVPlayerAttachment g = bVar.g();
        this.e.a(g);
        if (z) {
            this.e.b(g.h());
        }
        this.b.remove(bVar);
        this.c.remove(bVar);
    }

    public void a(boolean z) {
        for (b a : n.a(this.b)) {
            a(a, !z);
        }
        for (b a2 : n.a(this.c)) {
            a(a2, !z);
        }
        this.b.clear();
        this.c.clear();
    }

    public void a() {
        this.a.clear();
        for (b bVar : this.b) {
            if (bVar.f().u()) {
                bVar.e();
                this.a.add(bVar);
            }
        }
        for (b bVar2 : this.c) {
            if (bVar2.f().u()) {
                bVar2.e();
                this.a.add(bVar2);
            }
        }
    }

    public void b(boolean z) {
        for (b a : this.a) {
            a.a(z);
        }
        this.a.clear();
    }

    public void b() {
        if (any.a().b() <= 2013) {
            this.e.c();
        }
    }
}
