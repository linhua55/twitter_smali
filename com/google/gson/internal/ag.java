package com.google.gson.internal;

import java.lang.reflect.Method;

/* compiled from: Twttr */
final class ag extends ae {
    final /* synthetic */ Method a;
    final /* synthetic */ int b;

    ag(Method method, int i) {
        this.a = method;
        this.b = i;
    }

    public <T> T a(Class<T> cls) throws Exception {
        return this.a.invoke(null, new Object[]{cls, Integer.valueOf(this.b)});
    }
}
