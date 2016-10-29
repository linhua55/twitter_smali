package defpackage;

import cmu;
import cmy;
import com.twitter.util.collection.n;
import com.twitter.util.object.f;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cna */
public final class cna extends f<cmy> {
    private cmu a;
    private cmu b;
    private cmu c;
    private List<cmj> d;

    public cna() {
        this.d = n.g();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public cna a(cmu cmu) {
        this.a = cmu;
        return this;
    }

    public cna b(cmu cmu) {
        this.b = cmu;
        return this;
    }

    public cna c(cmu cmu) {
        this.c = cmu;
        return this;
    }

    public cna a(List<cmj> list) {
        if (list == null) {
            list = n.g();
        }
        this.d = list;
        return this;
    }

    public boolean bo_() {
        return this.a != null;
    }

    protected cmy d() {
        return new cmy(this, null);
    }
}
