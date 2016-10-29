package com.twitter.util.collection;

import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
class aq extends ThreadLocal<List<Map<K, V>>> {
    final /* synthetic */ ap a;

    aq(ap apVar) {
        this.a = apVar;
    }

    protected /* synthetic */ Object initialValue() {
        return a();
    }

    protected List<Map<K, V>> a() {
        return MutableList.a();
    }
}
