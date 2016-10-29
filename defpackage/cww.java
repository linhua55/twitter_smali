package defpackage;

import java.util.Comparator;

/* compiled from: Twttr */
/* renamed from: cww */
class cww implements Comparator<cwx> {
    final /* synthetic */ cwv a;

    cww(cwv cwv) {
        this.a = cwv;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((cwx) obj, (cwx) obj2);
    }

    public int a(cwx cwx, cwx cwx2) {
        return (int) (cwx.b - cwx2.b);
    }
}
