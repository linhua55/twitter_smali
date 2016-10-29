package com.twitter.model.json.common;

import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import com.twitter.util.object.f;
import java.util.Map;

/* compiled from: Twttr */
public class j {
    public static <T> Map<Long, T> a(Map<String, ? extends T> map) {
        return CollectionUtils.a(map, new k());
    }

    public static <T> Map<String, T> b(Map<String, ? extends T> map) {
        return CollectionUtils.a(map, new l());
    }

    public static <M, J extends f<M>> M a(J j) {
        return j != null ? j.b() : null;
    }

    public static <M, J extends f<M>> M a(J j, M m) {
        return e.b(a((f) j), m);
    }

    public static <M, J extends e<M>> f<M> a(J j) {
        return j != null ? j.c() : null;
    }

    public static boolean a(Class<?> cls) {
        return b.class.isAssignableFrom(cls);
    }
}
