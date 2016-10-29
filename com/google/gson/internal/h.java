package com.google.gson.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/* compiled from: Twttr */
class h implements y<T> {
    final /* synthetic */ Constructor a;
    final /* synthetic */ b b;

    h(b bVar, Constructor constructor) {
        this.b = bVar;
        this.a = constructor;
    }

    public T a() {
        try {
            return this.a.newInstance(null);
        } catch (Throwable e) {
            throw new RuntimeException("Failed to invoke " + this.a + " with no args", e);
        } catch (InvocationTargetException e2) {
            throw new RuntimeException("Failed to invoke " + this.a + " with no args", e2.getTargetException());
        } catch (IllegalAccessException e3) {
            throw new AssertionError(e3);
        }
    }
}
