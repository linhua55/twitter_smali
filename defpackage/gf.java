package defpackage;

import com.facebook.imagepipeline.animated.base.n;

/* compiled from: Twttr */
/* renamed from: gf */
public class gf extends gh {
    private n a;

    public gf(n nVar) {
        this.a = nVar;
    }

    public synchronized int a() {
        return c() ? 0 : this.a.a().a();
    }

    public synchronized int b() {
        return c() ? 0 : this.a.a().b();
    }

    public void close() {
        synchronized (this) {
            if (this.a == null) {
                return;
            }
            n nVar = this.a;
            this.a = null;
            nVar.d();
        }
    }

    public synchronized boolean c() {
        return this.a == null;
    }

    public synchronized int d() {
        return c() ? 0 : this.a.a().f();
    }

    public boolean e() {
        return true;
    }

    public synchronized n f() {
        return this.a;
    }
}
