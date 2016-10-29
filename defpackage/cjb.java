package defpackage;

import com.twitter.util.object.f;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cjb */
public class cjb extends f<ciz> {
    private ciq a;
    private Set<String> b;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cjb a(ciq ciq) {
        this.a = ciq;
        return this;
    }

    public cjb a(Set<String> set) {
        this.b = set;
        return this;
    }

    protected void X_() {
        super.X_();
        if (this.a == null) {
            this.a = (ciq) new cis().q();
        }
    }

    protected ciz d() {
        return new ciz();
    }
}
