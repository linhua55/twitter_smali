package de.greenrobot.event;

/* compiled from: Twttr */
final class o {
    final Object a;
    final m b;
    final int c;
    volatile boolean d;

    o(Object obj, m mVar, int i) {
        this.a = obj;
        this.b = mVar;
        this.c = i;
        this.d = true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.a == oVar.a && this.b.equals(oVar.b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() + this.b.d.hashCode();
    }
}
