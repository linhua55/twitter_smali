package com.twitter.model.moments.viewmodels;

import com.twitter.model.moments.MomentPageDisplayMode;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.af;
import com.twitter.model.moments.x;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public abstract class h<T extends MomentPage, B extends h<T, B>> extends f<T> {
    ab b;
    String c;
    MomentPageDisplayMode d;
    x e;
    af f;

    protected h() {
        this.d = MomentPageDisplayMode.DEFAULT;
    }

    public B a(ab abVar) {
        this.b = abVar;
        return (h) ObjectUtils.a(this);
    }

    public B a(String str) {
        this.c = str;
        return (h) ObjectUtils.a(this);
    }

    public B a(MomentPageDisplayMode momentPageDisplayMode) {
        this.d = momentPageDisplayMode;
        return (h) ObjectUtils.a(this);
    }

    public B a(x xVar) {
        this.e = xVar;
        return (h) ObjectUtils.a(this);
    }

    public B a(af afVar) {
        this.f = afVar;
        return (h) ObjectUtils.a(this);
    }

    public boolean bo_() {
        return (this.c == null || this.d == null) ? false : true;
    }
}
