package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* compiled from: Twttr */
public class p<V> extends FutureTask<V> implements j<u>, q, u {
    final Object b;

    public /* synthetic */ void c(Object obj) {
        a((u) obj);
    }

    public p(Callable<V> callable) {
        super(callable);
        this.b = a((Object) callable);
    }

    public p(Runnable runnable, V v) {
        super(runnable, v);
        this.b = a((Object) runnable);
    }

    public int compareTo(Object obj) {
        return ((q) a()).compareTo(obj);
    }

    public void a(u uVar) {
        ((j) ((q) a())).c(uVar);
    }

    public Collection<u> c() {
        return ((j) ((q) a())).c();
    }

    public boolean d() {
        return ((j) ((q) a())).d();
    }

    public Priority b() {
        return ((q) a()).b();
    }

    public void b(boolean z) {
        ((u) ((q) a())).b(z);
    }

    public boolean f() {
        return ((u) ((q) a())).f();
    }

    public void a(Throwable th) {
        ((u) ((q) a())).a(th);
    }

    public <T extends j<u> & q & u> T a() {
        return (j) this.b;
    }

    protected <T extends j<u> & q & u> T a(Object obj) {
        if (r.a(obj)) {
            return (j) obj;
        }
        return new r();
    }
}
