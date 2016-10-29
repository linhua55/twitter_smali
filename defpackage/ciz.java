package defpackage;

import com.twitter.util.collection.ar;
import com.twitter.util.serialization.n;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: ciz */
public class ciz {
    public static final n<ciz> a;
    public static final n<ciz> b;
    public static final ciz c;
    public final ciq d;
    public final Set<String> e;

    static {
        a = new cjd();
        b = new cjc();
        c = (ciz) new cjb().q();
    }

    private ciz(cjb cjb) {
        this.d = cjb.a;
        this.e = ar.a(cjb.b);
    }

    public long a() {
        return this.d.b;
    }

    public <T> T a(String str) {
        cil a = this.d.a(str);
        return a != null ? a.a() : null;
    }

    public cil b(String str) {
        return this.d.a(str);
    }

    public Set<String> b() {
        return this.d.c.keySet();
    }

    public ciz c() {
        return (ciz) new cjb().a(this.d.a()).a(this.e).q();
    }

    public String d() {
        StringBuilder stringBuilder = new StringBuilder();
        for (String str : com.twitter.util.collection.n.b(b())) {
            stringBuilder.append(str).append(":").append(a(str)).append(", ");
        }
        return stringBuilder.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ciz ciz = (ciz) obj;
        if (this.d.equals(ciz.d) && this.e.equals(ciz.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.d.hashCode() * 31) + this.e.hashCode();
    }
}
