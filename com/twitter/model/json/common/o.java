package com.twitter.model.json.common;

import com.bluelinelabs.logansquare.typeconverters.StringBasedTypeConverter;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class o<T> extends StringBasedTypeConverter<T> {
    private final T a;
    private final Map<String, T> b;

    public o(T[] tArr, T t) {
        this(MutableList.a(tArr), (Object) t);
    }

    protected o(List<T> list, T t) {
        r d = r.d();
        for (T next : list) {
            if (next != t) {
                d.b(next.toString(), next);
            }
        }
        this.b = (Map) d.q();
        this.a = t;
    }

    public T getFromString(String str) {
        return e.b(this.b.get(str), this.a);
    }

    public String convertToString(T t) {
        return t.toString();
    }
}
