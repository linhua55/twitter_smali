package com.twitter.internal.android.widget;

import bca;
import java.util.Comparator;

/* compiled from: Twttr */
class ap implements Comparator<bca> {
    ap() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((bca) obj, (bca) obj2);
    }

    public int a(bca bca, bca bca2) {
        int i = bca.i() & bca2.i();
        if (i == 1 || i == 2) {
            return 0;
        }
        if ((bca.i() & 1) == 0) {
            return (bca.i() & 2) != 0 ? -1 : 0;
        } else {
            return 1;
        }
    }
}
