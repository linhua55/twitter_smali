package defpackage;

import com.twitter.model.moments.MomentGuideSectionType;
import com.twitter.util.collection.n;
import com.twitter.util.object.f;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: cky */
public final class cky extends f<ckw> {
    String a;
    MomentGuideSectionType b;
    n<clc> c;
    String d;
    String e;
    String f;

    public cky() {
        this.b = MomentGuideSectionType.c;
        this.c = n.d();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public cky a(String str) {
        this.a = str;
        return this;
    }

    public cky a(MomentGuideSectionType momentGuideSectionType) {
        this.b = momentGuideSectionType;
        return this;
    }

    public cky b(String str) {
        this.d = str;
        return this;
    }

    public cky c(String str) {
        this.e = str;
        return this;
    }

    public cky d(String str) {
        this.f = str;
        return this;
    }

    public cky a(Iterable<clc> iterable) {
        if (iterable != null) {
            this.c.c(iterable);
        }
        return this;
    }

    public boolean bo_() {
        return !this.c.h() && e();
    }

    protected ckw d() {
        return new ckw();
    }

    private boolean e() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            if (((clc) it.next()).d == null) {
                return false;
            }
        }
        return true;
    }
}
