package defpackage;

import bx;
import com.facebook.datasource.AbstractDataSource;
import com.facebook.imagepipeline.producers.bw;
import com.facebook.imagepipeline.producers.ce;
import com.facebook.imagepipeline.producers.o;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
/* renamed from: fu */
public abstract class fu<T> extends AbstractDataSource<T> {
    private final ce a;
    private final go b;

    protected fu(bw<T> bwVar, ce ceVar, go goVar) {
        this.a = ceVar;
        this.b = goVar;
        this.b.a(ceVar.a(), this.a.d(), this.a.b(), this.a.f());
        bwVar.a(j(), ceVar);
    }

    private o<T> j() {
        return new fv(this);
    }

    protected void b(@Nullable T t, boolean z) {
        if (super.a(t, z) && z) {
            this.b.a(this.a.a(), this.a.b(), this.a.f());
        }
    }

    private void b(Throwable th) {
        if (super.a(th)) {
            this.b.a(this.a.a(), this.a.b(), th, this.a.f());
        }
    }

    private synchronized void k() {
        bx.b(a());
    }

    public boolean h() {
        if (!super.h()) {
            return false;
        }
        if (!super.b()) {
            this.b.a(this.a.b());
            this.a.i();
        }
        return true;
    }
}
