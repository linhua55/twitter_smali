package defpackage;

import cmq;
import com.twitter.model.core.ap;
import com.twitter.model.core.j;
import com.twitter.util.aj;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: cms */
public final class cms extends f<cmq> {
    private long a;
    private long b;
    private long c;
    private String d;
    private String e;
    private boolean f;
    private j<ap> g;

    public cms() {
        this.g = j.a();
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public cms a(long j) {
        this.a = j;
        return this;
    }

    public cms b(long j) {
        this.b = j;
        return this;
    }

    public cms c(long j) {
        this.c = j;
        return this;
    }

    public cms a(String str) {
        this.d = str;
        return this;
    }

    public cms b(String str) {
        this.e = str;
        return this;
    }

    public cms a(boolean z) {
        this.f = z;
        return this;
    }

    public cms a(j<ap> jVar) {
        if (jVar == null) {
            jVar = j.a();
        }
        this.g = jVar;
        return this;
    }

    public boolean bo_() {
        return this.a > 0 || this.c > 0 || aj.b(this.d);
    }

    protected cmq d() {
        return new cmq(this, null);
    }
}
