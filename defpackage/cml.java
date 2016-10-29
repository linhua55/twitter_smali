package defpackage;

import com.twitter.util.aj;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: cml */
public final class cml extends f<cmj> {
    private String a;
    private String b;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cml a(String str) {
        this.a = str;
        return this;
    }

    public cml b(String str) {
        this.b = str;
        return this;
    }

    public boolean bo_() {
        return aj.b(this.a) && aj.b(this.b);
    }

    protected cmj d() {
        return new cmj();
    }
}
