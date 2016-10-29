package com.twitter.internal.android.widget;

import bca;
import java.util.Comparator;

/* compiled from: Twttr */
class as implements Comparator<bca> {
    as() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((bca) obj, (bca) obj2);
    }

    public int a(bca bca, bca bca2) {
        if (bca.r() > bca2.r()) {
            return 1;
        }
        if (bca.r() < bca2.r()) {
            return -1;
        }
        return 0;
    }
}
