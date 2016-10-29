package com.twitter.model.core;

import java.util.Comparator;

/* compiled from: Twttr */
class h implements Comparator<e> {
    public static final Comparator<e> a;

    private h() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((e) obj, (e) obj2);
    }

    static {
        a = new h();
    }

    public int a(e eVar, e eVar2) {
        if (eVar.g < eVar2.g) {
            return -1;
        }
        return eVar.g == eVar2.g ? 0 : 1;
    }
}
