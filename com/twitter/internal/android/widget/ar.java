package com.twitter.internal.android.widget;

import bca;
import java.util.Comparator;

/* compiled from: Twttr */
class ar implements Comparator<bca> {
    ar() {
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((bca) obj, (bca) obj2);
    }

    public int a(bca bca, bca bca2) {
        int i = Integer.MAX_VALUE;
        int q = bca.q();
        if (q == -1) {
            q = Integer.MAX_VALUE;
        }
        int q2 = bca2.q();
        if (q2 != -1) {
            i = q2;
        }
        if (q > i) {
            return 1;
        }
        if (q < i) {
            return -1;
        }
        return 0;
    }
}
