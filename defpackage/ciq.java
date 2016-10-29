package defpackage;

import com.twitter.util.al;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: ciq */
public class ciq {
    public static final n<ciq> a;
    public final long b;
    public final Map<String, cil> c;
    public final String d;
    public final String e;

    static {
        a = new cit();
    }

    private ciq(cis cis) {
        this.b = cis.e > 0 ? cis.e : al.b();
        this.c = r.a(cis.a);
        this.d = e.b(cis.b);
        this.e = e.b(cis.c);
        if (cis.d != null) {
            for (cin cin : cis.d) {
                cil cil = (cil) this.c.get(cin.a());
                if (cil != null) {
                    cil.a(cin);
                }
            }
        }
    }

    public cil a(String str) {
        return (cil) this.c.get(str);
    }

    public ciq a() {
        r a = r.a(this.c.size());
        for (Entry entry : this.c.entrySet()) {
            a.b(entry.getKey(), entry.getValue() == null ? null : ((cil) entry.getValue()).d());
        }
        return (ciq) new cis().a((Map) a.q()).b(this.e).a(this.d).a(this.b).q();
    }

    public List<String> a(ciq ciq) {
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        for (String str : this.c.keySet()) {
            cil a = a(str);
            cil a2 = ciq.a(str);
            if ((a == null && a2 != null) || !(a == null || a.equals(a2))) {
                d.c(str);
            }
        }
        return (List) d.q();
    }

    public boolean b(ciq ciq) {
        return this.e.equals(ciq.e) && this.d.equals(ciq.d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ciq ciq = (ciq) obj;
        if (this.c.equals(ciq.c) && this.d.equals(ciq.d) && this.e.equals(ciq.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.c.hashCode() * 31) + this.d.hashCode()) * 31) + this.e.hashCode();
    }
}
