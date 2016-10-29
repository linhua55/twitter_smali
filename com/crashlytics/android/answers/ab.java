package com.crashlytics.android.answers;

import java.util.Map;

/* compiled from: Twttr */
class ab {
    final Type a;
    final long b;
    Map<String, String> c;
    String d;
    Map<String, Object> e;
    String f;
    Map<String, Object> g;

    public ab(Type type) {
        this.a = type;
        this.b = System.currentTimeMillis();
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
    }

    public ab a(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public ab b(Map<String, Object> map) {
        this.e = map;
        return this;
    }

    public SessionEvent a(ac acVar) {
        return new SessionEvent(this.b, this.a, this.c, this.d, this.e, this.f, this.g, null);
    }
}
