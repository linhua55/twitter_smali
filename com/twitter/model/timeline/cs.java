package com.twitter.model.timeline;

import com.twitter.model.core.TwitterSocialProof;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public final class cs extends f<cr> {
    int a;
    String b;
    String c;
    aj d;
    Map<String, TwitterSocialProof> e;
    Map<String, aj> f;
    List<Long> g;
    List<Long> h;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cs() {
        this.a = -1;
    }

    public cs a(int i) {
        this.a = i;
        return this;
    }

    public cs a(String str) {
        this.b = str;
        return this;
    }

    public cs b(String str) {
        this.c = str;
        return this;
    }

    public cs a(aj ajVar) {
        this.d = ajVar;
        return this;
    }

    public cs a(Map<String, TwitterSocialProof> map) {
        this.e = map;
        return this;
    }

    public cs b(Map<String, aj> map) {
        this.f = map;
        return this;
    }

    public cs a(List<Long> list, List<Long> list2) {
        this.g = list;
        this.h = list2;
        return this;
    }

    protected cr d() {
        return new cr();
    }
}
