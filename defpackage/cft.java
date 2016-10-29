package defpackage;

import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cft */
public final class cft extends f<cfr> {
    private String a;
    private List<cfu> b;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cft a(String str) {
        this.a = str;
        return this;
    }

    public cft a(List<cfu> list) {
        this.b = list;
        return this;
    }

    public boolean bo_() {
        return this.a != null;
    }

    protected cfr d() {
        return new cfr();
    }
}
