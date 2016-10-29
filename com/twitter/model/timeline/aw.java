package com.twitter.model.timeline;

import android.support.annotation.CallSuper;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.moments.ba;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public abstract class aw<T extends av, B extends aw> extends f<T> {
    String b;
    int c;
    long d;
    long e;
    aj f;
    l g;
    TwitterSocialProof h;
    ba i;
    String j;
    int k;

    public aw() {
        this.d = 0;
        this.e = -1;
        this.k = 0;
    }

    public B a(l lVar) {
        this.g = lVar;
        return (aw) ObjectUtils.a(this);
    }

    public B a(String str) {
        this.j = str;
        return (aw) ObjectUtils.a(this);
    }

    public B b(String str) {
        this.b = str;
        return (aw) ObjectUtils.a(this);
    }

    public B a(int i) {
        this.c = i;
        return (aw) ObjectUtils.a(this);
    }

    public B a(long j) {
        this.d = j;
        return (aw) ObjectUtils.a(this);
    }

    public B b(long j) {
        this.e = j;
        return (aw) ObjectUtils.a(this);
    }

    public B a(aj ajVar) {
        this.f = ajVar;
        return (aw) ObjectUtils.a(this);
    }

    public B a(TwitterSocialProof twitterSocialProof) {
        this.h = twitterSocialProof;
        return (aw) ObjectUtils.a(this);
    }

    public B a(ba baVar) {
        this.i = baVar;
        return (aw) ObjectUtils.a(this);
    }

    public B b(int i) {
        this.k = i;
        return (aw) ObjectUtils.a(this);
    }

    @CallSuper
    public boolean bo_() {
        return this.b != null;
    }
}
