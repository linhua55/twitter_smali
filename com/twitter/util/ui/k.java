package com.twitter.util.ui;

import java.util.Comparator;

/* compiled from: Twttr */
class k implements Comparator<n> {
    k() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((n) obj, (n) obj2);
    }

    public int a(n nVar, n nVar2) {
        return nVar.c - nVar2.c;
    }
}
