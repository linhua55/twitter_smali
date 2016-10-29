package defpackage;

import cmu;
import com.twitter.util.aj;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: cmw */
public final class cmw extends f<cmu> {
    private long a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private boolean g;
    private boolean h;

    protected /* synthetic */ Object c() {
        return d();
    }

    public cmw a(long j) {
        this.a = j;
        return this;
    }

    public cmw a(String str) {
        this.b = str;
        return this;
    }

    public cmw b(String str) {
        this.c = str;
        return this;
    }

    public cmw c(String str) {
        this.d = str;
        return this;
    }

    public cmw d(String str) {
        this.e = str;
        return this;
    }

    public cmw e(String str) {
        this.f = str;
        return this;
    }

    public cmw a(boolean z) {
        this.g = z;
        return this;
    }

    public cmw b(boolean z) {
        this.h = z;
        return this;
    }

    public boolean bo_() {
        return this.a > 0 && aj.b(this.b);
    }

    protected cmu d() {
        return new cmu(this, null);
    }
}
