package defpackage;

import com.twitter.util.object.f;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cis */
public class cis extends f<ciq> {
    protected Map<String, cil> a;
    protected String b;
    protected String c;
    protected Set<cin> d;
    private long e;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cis() {
        this.e = -1;
    }

    public cis(ciq ciq) {
        this.e = -1;
        this.a = ciq.c;
        this.b = ciq.d;
        this.c = ciq.e;
    }

    public cis a(Map<String, cil> map) {
        this.a = map;
        return this;
    }

    public cis a(String str) {
        this.b = str;
        return this;
    }

    public cis b(String str) {
        this.c = str;
        return this;
    }

    public cis a(Set<cin> set) {
        this.d = set;
        return this;
    }

    public cis a(long j) {
        this.e = j;
        return this;
    }

    protected ciq d() {
        return new ciq();
    }
}
