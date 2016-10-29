package com.twitter.model.stratostore;

import com.twitter.util.collection.r;
import java.util.Map;

/* compiled from: Twttr */
public final class i {
    private final r<Class<? extends f>, d> a;

    public i() {
        this.a = r.d();
    }

    public i a(Class<? extends f> cls, d dVar) {
        this.a.b(cls, dVar);
        return this;
    }

    public h a() {
        return new h((Map) this.a.q());
    }
}
