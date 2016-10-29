package com.twitter.android.moments.data;

import cyw;
import java.util.Map.Entry;

/* compiled from: Twttr */
class ax implements cyw<Entry<K, V>, Boolean> {
    final /* synthetic */ Object a;
    final /* synthetic */ av b;

    ax(av avVar, Object obj) {
        this.b = avVar;
        this.a = obj;
    }

    public Boolean a(Entry<K, V> entry) {
        return Boolean.valueOf(this.a.equals(entry.getKey()));
    }
}
