package com.twitter.android.moments.viewmodels;

import com.twitter.model.core.Tweet;
import com.twitter.model.moments.DisplayStyle;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;
import defpackage.cll;

/* compiled from: Twttr */
public abstract class u<T extends MomentModule, B extends u> extends f<T> {
    private ab a;
    private cll b;
    private DisplayStyle c;
    private String d;
    private Tweet e;
    private aj f;

    protected u() {
    }

    public B a(ab abVar) {
        this.a = abVar;
        return (u) ObjectUtils.a(this);
    }

    public B a(cll cll) {
        this.b = cll;
        return (u) ObjectUtils.a(this);
    }

    public B a(DisplayStyle displayStyle) {
        this.c = displayStyle;
        return (u) ObjectUtils.a(this);
    }

    public B b(String str) {
        this.d = str;
        return (u) ObjectUtils.a(this);
    }

    public B a(Tweet tweet) {
        this.e = tweet;
        return (u) ObjectUtils.a(this);
    }

    public B a(aj ajVar) {
        this.f = ajVar;
        return (u) ObjectUtils.a(this);
    }
}
