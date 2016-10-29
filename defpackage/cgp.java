package defpackage;

/* compiled from: Twttr */
/* renamed from: cgp */
public class cgp {
    public String a;

    public cgp(String str) {
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cgp)) {
            return false;
        }
        cgp cgp = (cgp) obj;
        if (this.a != null) {
            return this.a.equals(cgp.a);
        }
        if (cgp.a != null) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.a != null ? this.a.hashCode() : 0;
    }
}
