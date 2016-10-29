package com.facebook.cache.disk;

import java.util.Comparator;

/* compiled from: Twttr */
class q implements Comparator<m> {
    private final long a;

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((m) obj, (m) obj2);
    }

    public q(long j) {
        this.a = j;
    }

    public int a(m mVar, m mVar2) {
        long a;
        long j = 0;
        if (mVar.a() <= this.a) {
            a = mVar.a();
        } else {
            a = 0;
        }
        if (mVar2.a() <= this.a) {
            j = mVar2.a();
        }
        if (a < j) {
            return -1;
        }
        return j > a ? 1 : 0;
    }
}
