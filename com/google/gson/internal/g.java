package com.google.gson.internal;

import com.google.gson.k;
import java.lang.reflect.Type;

/* compiled from: Twttr */
class g implements y<T> {
    final /* synthetic */ k a;
    final /* synthetic */ Type b;
    final /* synthetic */ b c;

    g(b bVar, k kVar, Type type) {
        this.c = bVar;
        this.a = kVar;
        this.b = type;
    }

    public T a() {
        return this.a.a(this.b);
    }
}