package com.twitter.util.object;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.aj;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.j;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class e {
    public static <T> T a(T t) {
        j.b(t != null);
        return t;
    }

    public static String a(String str) {
        j.b(aj.b((CharSequence) str));
        return str;
    }

    public static <T, S> void a(T t, S s) {
        boolean z = true;
        if (t == null) {
            if (s == null) {
                z = false;
            }
            j.b(z);
            return;
        }
        if (s != null) {
            z = false;
        }
        j.b(z);
    }

    public static <T> T b(T t, T t2) {
        return t != null ? t : t2;
    }

    public static String b(String str) {
        return str != null ? str : BuildConfig.VERSION_NAME;
    }

    public static <T> List<T> a(List<T> list) {
        return list != null ? list : ImmutableList.c();
    }

    public static <T> Set<T> a(Set<T> set) {
        return set != null ? set : Collections.emptySet();
    }

    public static <K, V> Map<K, V> a(Map<K, V> map) {
        return map != null ? map : Collections.emptyMap();
    }

    public static <T> Iterable<T> a(Iterable<T> iterable) {
        return iterable != null ? iterable : Collections.emptyList();
    }
}
