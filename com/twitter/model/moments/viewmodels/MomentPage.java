package com.twitter.model.moments.viewmodels;

import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.af;
import com.twitter.model.moments.x;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public abstract class MomentPage {
    private final ab a;
    private final String b;
    private final MomentPageDisplayMode c;
    private final x d;
    private final af e;

    public abstract Type d();

    protected MomentPage(h hVar) {
        e.a(hVar.c);
        e.a(hVar.d);
        this.a = hVar.b;
        this.b = hVar.c;
        this.c = hVar.d;
        this.d = hVar.e;
        this.e = hVar.f;
    }

    @Deprecated
    public ab e() {
        return this.a;
    }

    public Long f() {
        return e() != null ? Long.valueOf(e().b) : null;
    }

    public MomentPageDisplayMode g() {
        return this.c;
    }

    public String h() {
        return this.b;
    }

    public boolean i() {
        return this.c == MomentPageDisplayMode.a;
    }

    public boolean j() {
        return this.c == MomentPageDisplayMode.c;
    }

    public x k() {
        return this.d;
    }

    public af l() {
        return this.e;
    }
}
