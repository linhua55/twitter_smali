package com.twitter.android.moments.viewmodels;

import com.twitter.model.moments.MomentPageType;
import com.twitter.model.moments.as;
import com.twitter.model.moments.g;
import com.twitter.util.math.Size;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class y implements j {
    private final long a;
    private final long b;
    private final String c;
    private final MomentPageType d;
    private final String e;
    private final String f;
    private final String g;
    private final Size h;
    private final g i;

    public y(as asVar) {
        this.a = asVar.c.j;
        this.b = asVar.b.b;
        this.c = e.b(asVar.b.c);
        this.d = asVar.c.c;
        this.e = asVar.c.g != null ? asVar.c.g.d : null;
        this.f = asVar.b.g;
        this.g = asVar.b.h;
        this.h = asVar.c.g.c;
        this.i = asVar.c.e.c;
    }

    public long a() {
        return this.a;
    }

    public long b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.e;
    }

    public String e() {
        return this.f;
    }

    public Size f() {
        return this.h;
    }

    public g g() {
        return this.i;
    }

    public boolean h() {
        return this.d == MomentPageType.e || this.d == MomentPageType.f || this.d == MomentPageType.d || this.d == MomentPageType.c || this.d == MomentPageType.g;
    }
}
