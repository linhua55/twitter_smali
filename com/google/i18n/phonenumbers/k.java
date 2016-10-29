package com.google.i18n.phonenumbers;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import java.util.LinkedHashMap;

/* compiled from: Twttr */
class k<K, V> {
    private LinkedHashMap<K, V> a;
    private int b;

    public k(int i) {
        this.b = i;
        this.a = new RegexCache$LRUCache$1(this, ((i * 4) / 3) + 1, AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION, true);
    }

    public synchronized V a(K k) {
        return this.a.get(k);
    }

    public synchronized void a(K k, V v) {
        this.a.put(k, v);
    }
}
