package com.twitter.util.ui;

import java.util.Comparator;

/* compiled from: Twttr */
class o implements Comparator<n> {
    o() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((n) obj, (n) obj2);
    }

    public int a(n nVar, n nVar2) {
        return nVar.b - nVar2.b;
    }
}
