package com.twitter.android.widget;

import cyr;
import java.util.concurrent.TimeUnit;
import rx.an;
import rx.o;
import rx.t;

/* compiled from: Twttr */
public class cp {
    public static int a;
    private final t b;
    private cyr c;
    private an d;

    static {
        a = ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
    }

    public cp(cyr cyr, t tVar) {
        this.c = cyr;
        this.b = tVar;
    }

    public void a() {
        e();
        this.d = o.a((long) a, TimeUnit.MILLISECONDS, this.b).d(1).b(new cq(this));
    }

    public void b() {
        e();
    }

    public void c() {
        this.c.a();
        e();
    }

    public void d() {
        e();
    }

    private void e() {
        if (this.d != null) {
            this.d.K_();
        }
    }
}
