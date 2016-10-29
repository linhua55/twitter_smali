package com.google.gson.internal;

import com.google.gson.JsonIOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* compiled from: Twttr */
class j implements y<T> {
    final /* synthetic */ Type a;
    final /* synthetic */ b b;

    j(b bVar, Type type) {
        this.b = bVar;
        this.a = type;
    }

    public T a() {
        if (this.a instanceof ParameterizedType) {
            Type type = ((ParameterizedType) this.a).getActualTypeArguments()[0];
            if (type instanceof Class) {
                return EnumSet.noneOf((Class) type);
            }
            throw new JsonIOException("Invalid EnumSet type: " + this.a.toString());
        }
        throw new JsonIOException("Invalid EnumSet type: " + this.a.toString());
    }
}
