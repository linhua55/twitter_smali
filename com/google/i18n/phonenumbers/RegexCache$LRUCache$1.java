package com.google.i18n.phonenumbers;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

/* compiled from: Twttr */
class RegexCache$LRUCache$1 extends LinkedHashMap<K, V> {
    final /* synthetic */ k this$0;

    RegexCache$LRUCache$1(k kVar, int i, float f, boolean z) {
        this.this$0 = kVar;
        super(i, f, z);
    }

    protected boolean removeEldestEntry(Entry<K, V> entry) {
        return size() > this.this$0.b;
    }
}
