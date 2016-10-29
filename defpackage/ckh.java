package defpackage;

import cjw;
import com.twitter.util.object.e;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: ckh */
public final class ckh extends f<ckf> {
    ckj a;
    cjw b;

    protected /* synthetic */ Object c() {
        return d();
    }

    public ckh a(ckj ckj) {
        this.a = ckj;
        return this;
    }

    public ckh a(cjw cjw) {
        this.b = cjw;
        return this;
    }

    protected ckf d() {
        return new ckf((cjw) e.a(this.b), this.a);
    }

    public boolean bo_() {
        return this.b != null;
    }
}
