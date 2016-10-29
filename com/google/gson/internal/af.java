package com.google.gson.internal;

import java.lang.reflect.Method;

/* compiled from: Twttr */
final class af extends ae {
    final /* synthetic */ Method a;
    final /* synthetic */ Object b;

    af(Method method, Object obj) {
        this.a = method;
        this.b = obj;
    }

    public <T> T a(Class<T> cls) throws Exception {
        return this.a.invoke(this.b, new Object[]{cls});
    }
}
