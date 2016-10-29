package com.twitter.app.common.account;

import java.util.Comparator;

/* compiled from: Twttr */
class c implements Comparator<a> {
    private c() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((a) obj, (a) obj2);
    }

    public int a(a aVar, a aVar2) {
        return aVar.d().compareToIgnoreCase(aVar2.d());
    }

    public boolean equals(Object obj) {
        return false;
    }

    public int hashCode() {
        return 0;
    }
}
