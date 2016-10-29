package com.twitter.model.eventtimelines;

import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
public final class b extends f<TvShow> {
    long a;
    String b;
    String c;
    String d;
    List<String> e;
    List<String> f;

    protected /* synthetic */ Object c() {
        return d();
    }

    public b a(long j) {
        this.a = j;
        return this;
    }

    public b a(String str) {
        this.b = str;
        return this;
    }

    public b b(String str) {
        this.c = str;
        return this;
    }

    public b c(String str) {
        this.d = str;
        return this;
    }

    public b a(List<String> list) {
        this.e = list;
        return this;
    }

    public b b(List<String> list) {
        this.f = list;
        return this;
    }

    protected TvShow d() {
        return new TvShow(this);
    }
}
