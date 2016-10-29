package com.twitter.util.collection;

import java.util.Map;

/* compiled from: Twttr */
class s<K, V> extends r<K, V> {
    protected /* synthetic */ Object c() {
        return super.g();
    }

    s(int i) {
        if (i > 1) {
            this.a = b(i);
        }
    }

    protected Map<K, V> b(int i) {
        return MutableMap.a();
    }
}
