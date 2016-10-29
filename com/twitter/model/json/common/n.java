package com.twitter.model.json.common;

import com.bluelinelabs.logansquare.typeconverters.StringBasedTypeConverter;
import com.twitter.util.collection.a;
import com.twitter.util.object.e;
import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class n<T> extends StringBasedTypeConverter<T> {
    private final T a;
    private final a<String, T> b;

    public n(T t, Map<String, T> map) {
        this.a = t;
        this.b = new a(map);
    }

    @SafeVarargs
    public n(T t, Entry<String, T>... entryArr) {
        this.a = t;
        this.b = new a(entryArr);
    }

    public T getFromString(String str) {
        return e.b(this.b.get(str), this.a);
    }

    public String convertToString(T t) {
        return (String) this.b.a(t);
    }

    protected static <T> Entry<String, T> a(String str, T t) {
        return new SimpleImmutableEntry(str, t);
    }
}
