package com.twitter.library.util;

import com.twitter.library.platform.e;
import java.util.Comparator;

/* compiled from: Twttr */
class aw implements Comparator<e> {
    private aw() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((e) obj, (e) obj2);
    }

    public int a(e eVar, e eVar2) {
        if (eVar == null && eVar2 == null) {
            return 0;
        }
        if (eVar == null) {
            return 1;
        }
        if (eVar2 == null) {
            return -1;
        }
        return eVar2.b() - eVar.b();
    }
}
