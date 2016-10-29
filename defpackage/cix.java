package defpackage;

import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cix */
public class cix extends f<civ> {
    private cis a;
    private String b;
    private Map<String, cie> c;
    private Set<String> d;
    private Map<String, chx> e;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cix a(cis cis) {
        this.a = cis;
        return this;
    }

    public cix a(String str) {
        this.b = str;
        return this;
    }

    public cix a(Map<String, cie> map) {
        this.c = map;
        return this;
    }

    public cix a(Set<String> set) {
        this.d = set;
        return this;
    }

    public cix a(Map<String, cij> map, Set<String> set) {
        this.e = b(map, set);
        return this;
    }

    public cix b(Map<String, chx> map) {
        this.e = map;
        return this;
    }

    protected void X_() {
        super.X_();
        if (this.a == null) {
            this.a = new cis();
        }
    }

    protected civ d() {
        return new civ();
    }

    private Map<String, chx> b(Map<String, cij> map, Set<String> set) {
        r d = r.d();
        for (cij cij : map.values()) {
            for (cik cik : cij.e.values()) {
                String str = cik.a;
                d.b(str, new chz().a(str).a(cik.b).a(cik.c).a(set.contains(str)).q());
            }
        }
        return (Map) d.q();
    }
}
