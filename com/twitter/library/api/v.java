package com.twitter.library.api;

import cfb;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.model.core.cd;
import com.twitter.model.json.common.g;
import java.io.IOException;

/* compiled from: Twttr */
public class v<T, U> extends t<T, U> {
    private final Class<T> a;
    private final Class<U> b;

    public static <T> v<T, cd> a(Class<T> cls) {
        return a((Class) cls, cd.class);
    }

    public static <T, U> v<T, U> a(Class<T> cls, Class<U> cls2) {
        return new v(cls, cls2);
    }

    protected v(Class<T> cls, Class<U> cls2) {
        this.a = cls;
        this.b = cls2;
    }

    public T a(JsonParser jsonParser) throws IOException {
        return this.a != null ? g.c(jsonParser, this.a) : null;
    }

    public U a(JsonParser jsonParser, int i) throws IOException {
        if (this.b != null) {
            return g.c(jsonParser, this.b);
        }
        cfb.d(getClass().getSimpleName(), "Failed with parse error with status code: " + i);
        return null;
    }
}
