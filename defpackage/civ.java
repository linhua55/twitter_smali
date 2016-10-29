package defpackage;

import com.twitter.config.b;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import cpa;
import java.util.Date;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: civ */
public class civ {
    public static final n<civ> a;
    public static final civ b;
    public final ciq c;
    public final String d;
    public final Map<String, cie> e;
    public final Set<String> f;
    public final Map<String, chx> g;

    static {
        a = new ciy();
        b = (civ) new cix().q();
    }

    private civ(cix cix) {
        this.d = e.b(cix.b);
        this.e = r.a(cix.c);
        this.f = ar.a(cix.d);
        this.g = r.a(cix.e);
        this.c = (ciq) a(new Date(), cix.a).q();
    }

    public <T> T a(String str) {
        cil a = this.c.a(str);
        return a != null ? a.a() : null;
    }

    public cil b(String str) {
        return this.c.a(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        civ civ = (civ) obj;
        if (this.c.equals(civ.c) && this.d.equals(civ.d) && this.e.equals(civ.e) && this.f.equals(civ.f)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.c.hashCode() * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode();
    }

    private cis a(Date date, cis cis) {
        long a = b.a();
        r b = r.d().b(cis.a);
        for (cie cie : this.e.values()) {
            if (cis.a.get(cie.b) == null) {
                Object obj = (date.after(cie.e) && date.before(cie.f)) ? 1 : null;
                String a2 = obj != null ? cie.a(cpa.a(String.valueOf(a), cie.b)) : "unassigned";
                cil cil = new cil(cie.b, a2);
                if (!a2.equals("unassigned")) {
                    cil.a(new cin(cie.b, cie.c, a2));
                }
                b.b(cie.b, cil);
            }
        }
        return cis.a((Map) b.q());
    }
}
