package com.twitter.android.util;

import android.content.Context;
import com.twitter.library.api.activity.b;
import com.twitter.library.api.activity.h;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.client.t;
import com.twitter.util.al;
import defpackage.bdd;

/* compiled from: Twttr */
public class ai implements ah {
    private long a;
    private long b;
    private long c;
    private int d;
    private long e;
    private String f;
    private boolean g;
    private final Context h;
    private final bg i;
    private final az j;

    public ai(Context context, int i, long j, String str) {
        this.h = context.getApplicationContext();
        this.i = bg.a();
        this.j = az.a(this.h);
        a(i, j, str);
    }

    public void a(int i, long j, String str) {
        this.d = i;
        this.e = j;
        this.f = str;
        this.c = 0;
        this.g = false;
        if (j > 0 && str != null) {
            long e = e();
            long b = al.b();
            if (e > b) {
                t.a(this.h, this.f, b);
            } else {
                b = e;
            }
            this.a = b;
            this.b = b;
        }
    }

    public long a() {
        return this.a;
    }

    public void a(long j) {
        this.b = Math.max(this.b, j);
    }

    public void b() {
        this.g = true;
    }

    public void a(long j, long j2) {
        if (j == this.e) {
            this.c = j2;
            if (j2 > this.a) {
                a(j2);
                c(j2);
            }
        }
    }

    public void c() {
        c(this.b);
        if (this.b != this.c) {
            d();
        }
    }

    public static int a(int i) {
        switch (i) {
            case bdd.TweetView_mediaDivider /*23*/:
                return 2;
            case bdd.TweetView_autoLink /*24*/:
                return 3;
            case bdd.TweetView_linkSelectedColor /*25*/:
                return 4;
            default:
                return 0;
        }
    }

    private void d() {
        this.c = this.b;
        this.j.a(new h(this.h, this.i.b(this.e), Math.min(this.c, al.b())));
    }

    private long e() {
        if (this.f == null) {
            return 0;
        }
        return t.a(this.h, this.f);
    }

    private void b(long j) {
        if (this.f != null) {
            t.b(this.h, this.f, j);
        }
    }

    private void c(long j) {
        this.a = j;
        b(j);
        this.j.a((b) new b(this.h, this.i.b(this.e), j, this.g, this.d).a(new aj(this)));
    }
}
