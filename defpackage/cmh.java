package defpackage;

import cmf;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: cmh */
public final class cmh extends f<cmf> {
    private int a;
    private String b;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cmh a(String str) {
        this.a = ((Integer) cmf.a().get(str)).intValue();
        return this;
    }

    public cmh a(int i) {
        this.a = i;
        return this;
    }

    public cmh b(String str) {
        this.b = str;
        return this;
    }

    public boolean bo_() {
        return this.a > 0;
    }

    protected cmf d() {
        return new cmf(this, null);
    }
}
