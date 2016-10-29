package com.twitter.database.lru;

/* compiled from: Twttr */
public interface m<K> {
    public static final m<String> a;
    public static final m<Long> b;

    K a(String str);

    String a(K k);

    static {
        a = new n();
        b = new o();
    }
}
