package defpackage;

/* compiled from: Twttr */
/* renamed from: cnq */
public class cnq {
    public final String a;

    public cnq(String str) {
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((cnq) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
