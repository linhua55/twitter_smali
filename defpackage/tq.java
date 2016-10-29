package defpackage;

/* compiled from: Twttr */
/* renamed from: tq */
public final class tq {
    public final String a;
    public final int b;

    public tq(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        tq tqVar = (tq) obj;
        if (this.b == tqVar.b && this.a.equals(tqVar.a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b;
    }
}
