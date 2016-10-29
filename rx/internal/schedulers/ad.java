package rx.internal.schedulers;

import defpackage.cyr;

/* compiled from: Twttr */
final class ad implements Comparable<ad> {
    final cyr a;
    final Long b;
    final int c;

    public /* synthetic */ int compareTo(Object obj) {
        return a((ad) obj);
    }

    ad(cyr cyr, Long l, int i) {
        this.a = cyr;
        this.b = l;
        this.c = i;
    }

    public int a(ad adVar) {
        int compareTo = this.b.compareTo(adVar.b);
        if (compareTo == 0) {
            return aa.a(this.c, adVar.c);
        }
        return compareTo;
    }
}
