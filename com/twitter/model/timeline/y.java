package com.twitter.model.timeline;

import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
public final class y extends f<w> {
    String a;
    aj b;
    List<Long> c;

    protected /* synthetic */ Object c() {
        return d();
    }

    public y a(String str) {
        this.a = str;
        return this;
    }

    public y a(aj ajVar) {
        this.b = ajVar;
        return this;
    }

    public y a(List<Long> list) {
        this.c = list;
        return this;
    }

    protected w d() {
        return new w();
    }
}
