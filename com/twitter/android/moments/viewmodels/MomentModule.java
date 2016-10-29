package com.twitter.android.moments.viewmodels;

import com.twitter.model.core.Tweet;
import com.twitter.model.moments.DisplayStyle;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.aj;
import com.twitter.util.object.e;
import defpackage.cll;

/* compiled from: Twttr */
public abstract class MomentModule {
    private final ab a;
    private final cll b;
    private final DisplayStyle c;
    protected final Tweet d;
    private final String e;
    private final aj f;

    /* compiled from: Twttr */
    public enum Type {
        VIDEO,
        IMAGE
    }

    public abstract Type a();

    protected MomentModule(u uVar) {
        this.a = uVar.a;
        this.b = uVar.b;
        this.c = uVar.c;
        this.e = uVar.d;
        this.d = uVar.e;
        this.f = uVar.f;
    }

    public ab b() {
        return this.a;
    }

    public cll d() {
        return this.b;
    }

    public DisplayStyle e() {
        return this.c;
    }

    public String f() {
        return (String) e.b(this.e, this.a.i);
    }

    public Tweet g() {
        return this.d;
    }

    public aj h() {
        return this.f;
    }
}
