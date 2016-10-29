package com.twitter.util.object;

import java.util.List;

/* compiled from: Twttr */
public final class h {
    public static final h a;

    static {
        a = new h();
    }

    public <T> T a(Object obj, Class<T> cls) {
        if (Boolean.class.equals(cls)) {
            return ObjectUtils.a(Boolean.valueOf(a(obj)));
        }
        if (Integer.class.equals(cls)) {
            return ObjectUtils.a(Integer.valueOf(b(obj)));
        }
        if (Long.class.equals(cls)) {
            return ObjectUtils.a(Long.valueOf(c(obj)));
        }
        if (Float.class.equals(cls)) {
            return ObjectUtils.a(Float.valueOf(d(obj)));
        }
        if (Double.class.equals(cls)) {
            return ObjectUtils.a(Double.valueOf(e(obj)));
        }
        if (String.class.equals(cls)) {
            return ObjectUtils.a(f(obj));
        }
        if (List.class.equals(cls)) {
            return ObjectUtils.a(g(obj));
        }
        return ObjectUtils.a(obj);
    }

    public boolean a(Object obj) {
        return ((Boolean) Boolean.class.cast(obj)).booleanValue();
    }

    public int b(Object obj) {
        return h(obj).intValue();
    }

    public long c(Object obj) {
        return h(obj).longValue();
    }

    public float d(Object obj) {
        return h(obj).floatValue();
    }

    public double e(Object obj) {
        return h(obj).doubleValue();
    }

    public String f(Object obj) {
        return (String) String.class.cast(obj);
    }

    public <T> List<T> g(Object obj) {
        return (List) List.class.cast(obj);
    }

    private Number h(Object obj) {
        return (Number) Number.class.cast(obj);
    }
}
