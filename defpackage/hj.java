package defpackage;

/* compiled from: Twttr */
/* renamed from: hj */
final class hj {
    public final hn a;
    public final hj b;
    public final int c;
    public final int d;

    hj(hn hnVar, hj hjVar) {
        this.a = hnVar;
        this.b = hjVar;
        this.d = hjVar == null ? 1 : hjVar.d + 1;
        this.c = hnVar.hashCode();
    }

    public hn a(int i, int i2, int i3) {
        if (this.c == i && this.a.a(i2, i3)) {
            return this.a;
        }
        for (hj hjVar = this.b; hjVar != null; hjVar = hjVar.b) {
            if (hjVar.c == i) {
                hn hnVar = hjVar.a;
                if (hnVar.a(i2, i3)) {
                    return hnVar;
                }
            }
        }
        return null;
    }

    public hn a(int i, int[] iArr, int i2) {
        if (this.c == i && this.a.a(iArr, i2)) {
            return this.a;
        }
        for (hj hjVar = this.b; hjVar != null; hjVar = hjVar.b) {
            if (hjVar.c == i) {
                hn hnVar = hjVar.a;
                if (hnVar.a(iArr, i2)) {
                    return hnVar;
                }
            }
        }
        return null;
    }
}
