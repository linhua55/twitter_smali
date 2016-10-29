package com.twitter.model.av;

import com.twitter.model.core.cm;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public final class ac extends f<ab> {
    private String a;
    private String b;
    private List<cm> c;
    private Map<Long, ad> d;

    protected /* synthetic */ Object c() {
        return d();
    }

    public ac a(String str) {
        this.a = str;
        return this;
    }

    public ac b(String str) {
        this.b = str;
        return this;
    }

    public ac a(List<cm> list) {
        this.c = list;
        return this;
    }

    public ac a(Map<Long, ad> map) {
        this.d = map;
        return this;
    }

    protected ab d() {
        return new ab(this);
    }
}
