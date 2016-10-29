package defpackage;

import cfp;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cg;
import com.twitter.model.core.cm;
import com.twitter.util.collection.n;
import com.twitter.util.j;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cfz */
public class cfz {
    public final cga a;

    private cfz(cga cga) {
        this.a = cga;
    }

    public static cfz a(cga cga) {
        if (cga != null) {
            return new cfz(cga);
        }
        return null;
    }

    public List<cm> a() {
        if (this.a.i == 2) {
            return this.a.j.a;
        }
        j.a(false, "Attempted to access status targets when type was " + cfp.a(this.a.i));
        return n.g();
    }

    public List<TwitterUser> b() {
        if (this.a.i == 1) {
            return this.a.j.a;
        }
        j.a(false, "Attempted to access user targets when type was " + cfp.a(this.a.i));
        return n.g();
    }

    public List<cm> c() {
        if (this.a.l == 2) {
            return this.a.m.a;
        }
        j.a(false, "Attempted to access status target objects when type was " + cfp.a(this.a.l));
        return n.g();
    }

    public List<cg> d() {
        if (this.a.l == 3) {
            return this.a.m.a;
        }
        j.a(false, "Attempted to access list target objects when type was " + cfp.a(this.a.l));
        return n.g();
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof cfz) && a((cfz) obj));
    }

    public boolean a(cfz cfz) {
        return this == cfz || (cfz != null && this.a.a(cfz.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
