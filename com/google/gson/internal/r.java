package com.google.gson.internal;

import java.util.Comparator;

/* compiled from: Twttr */
final class r implements Comparator<Comparable> {
    r() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((Comparable) obj, (Comparable) obj2);
    }

    public int a(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }
}
