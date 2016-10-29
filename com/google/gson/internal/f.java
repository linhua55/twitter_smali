package com.google.gson.internal;

import java.lang.reflect.Type;

/* compiled from: Twttr */
class f implements y<T> {
    final /* synthetic */ Class a;
    final /* synthetic */ Type b;
    final /* synthetic */ b c;
    private final ae d;

    f(b bVar, Class cls, Type type) {
        this.c = bVar;
        this.a = cls;
        this.b = type;
        this.d = ae.a();
    }

    public T a() {
        try {
            return this.d.a(this.a);
        } catch (Throwable e) {
            throw new RuntimeException("Unable to invoke no-args constructor for " + this.b + ". " + "Register an InstanceCreator with Gson for this type may fix this problem.", e);
        }
    }
}
