package com.google.gson.internal;

import java.lang.reflect.Method;

/* compiled from: Twttr */
final class ah extends ae {
    final /* synthetic */ Method a;

    ah(Method method) {
        this.a = method;
    }

    public <T> T a(Class<T> cls) throws Exception {
        return this.a.invoke(null, new Object[]{cls, Object.class});
    }
}
