package com.twitter.model.search;

import com.twitter.model.core.TwitterSocialProof;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
public final class q extends f<p> {
    List<a> a;
    boolean b;
    boolean c;
    g d;
    String e;
    TwitterSocialProof f;
    String g;
    String h;

    protected /* synthetic */ Object c() {
        return d();
    }

    public q a(List<a> list) {
        this.a = list;
        return this;
    }

    public q a(boolean z) {
        this.b = z;
        return this;
    }

    public q b(boolean z) {
        this.c = z;
        return this;
    }

    public q a(g gVar) {
        this.d = gVar;
        return this;
    }

    public q a(String str) {
        this.e = str;
        return this;
    }

    public q a(TwitterSocialProof twitterSocialProof) {
        this.f = twitterSocialProof;
        return this;
    }

    public q b(String str) {
        this.g = str;
        return this;
    }

    public q c(String str) {
        this.h = str;
        return this;
    }

    protected p d() {
        return new p(this);
    }
}
