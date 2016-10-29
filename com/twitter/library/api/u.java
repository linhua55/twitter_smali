package com.twitter.library.api;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.model.core.cd;
import com.twitter.model.json.common.g;
import defpackage.cfb;
import java.io.IOException;
import java.util.List;

/* compiled from: Twttr */
public class u<T, U> extends t<List<T>, U> {
    private final Class<T> a;
    private final Class<U> b;

    public /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    public static <T> u<T, cd> a(Class<T> cls) {
        return a((Class) cls, cd.class);
    }

    public static <T, U> u<T, U> a(Class<T> cls, Class<U> cls2) {
        return new u(cls, cls2);
    }

    protected u(Class<T> cls, Class<U> cls2) {
        this.a = cls;
        this.b = cls2;
    }

    public List<T> b(JsonParser jsonParser) throws IOException {
        return g.d(jsonParser, this.a);
    }

    public U a(JsonParser jsonParser, int i) throws IOException {
        if (this.b != null) {
            return g.c(jsonParser, this.b);
        }
        cfb.d(getClass().getSimpleName(), "Failed with parse error with status code: " + i);
        return null;
    }
}
