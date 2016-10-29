package com.twitter.util.collection;

import java.util.Comparator;

/* compiled from: Twttr */
class p<T> extends o<T> implements au<T> {
    protected final Comparator<? super T> b;

    p(Comparator<? super T> comparator, int i) {
        this.b = comparator;
        if (i > 1) {
            d(i);
        }
    }

    public Comparator<? super T> comparator() {
        return this.b;
    }

    protected void d(int i) {
        this.a = MutableList.a(this.b, i);
    }
}
