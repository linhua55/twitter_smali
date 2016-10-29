package com.twitter.android.util;

import com.twitter.util.ui.n;
import java.util.Comparator;

/* compiled from: Twttr */
final class r implements Comparator<n> {
    final /* synthetic */ float a;

    r(float f) {
        this.a = f;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((n) obj, (n) obj2);
    }

    public int a(n nVar, n nVar2) {
        float a = q.b(nVar, this.a);
        float a2 = q.b(nVar2, this.a);
        if (a < a2) {
            return 1;
        }
        if (a > a2) {
            return -1;
        }
        return 0;
    }
}
