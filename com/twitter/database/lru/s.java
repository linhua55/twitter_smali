package com.twitter.database.lru;

import com.twitter.util.collection.CollectionUtils;
import cyw;
import java.util.Map;

/* compiled from: Twttr */
class s implements cyw<Map<String, V>, Map<K, V>> {
    final /* synthetic */ p a;

    s(p pVar) {
        this.a = pVar;
    }

    public Map<K, V> a(Map<String, V> map) {
        return CollectionUtils.a(map, this.a.c);
    }
}
