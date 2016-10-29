package com.twitter.model.businessprofiles;

import com.twitter.util.object.f;
import java.util.List;
import java.util.TimeZone;

/* compiled from: Twttr */
public final class k extends f<i> {
    TimeZone a;
    List<ad> b;
    List<ad> c;
    List<ad> d;
    List<ad> e;
    List<ad> f;
    List<ad> g;
    List<ad> h;

    public k() {
        this.a = TimeZone.getDefault();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public k a(TimeZone timeZone) {
        this.a = timeZone;
        return this;
    }

    public k a(List<ad> list) {
        this.b = list;
        return this;
    }

    public k b(List<ad> list) {
        this.c = list;
        return this;
    }

    public k c(List<ad> list) {
        this.d = list;
        return this;
    }

    public k d(List<ad> list) {
        this.e = list;
        return this;
    }

    public k e(List<ad> list) {
        this.f = list;
        return this;
    }

    public k f(List<ad> list) {
        this.g = list;
        return this;
    }

    public k g(List<ad> list) {
        this.h = list;
        return this;
    }

    protected i d() {
        return new i(this);
    }
}
