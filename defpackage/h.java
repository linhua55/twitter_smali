package defpackage;

import a;
import h.m;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* compiled from: Twttr */
/* renamed from: h */
public class h<TResult> {
    public static final ExecutorService a;
    public static final Executor b;
    private static final Executor c;
    private final Object d;
    private boolean e;
    private boolean f;
    private TResult g;
    private Exception h;
    private List<g<TResult, Void>> i;

    static {
        a = d.a();
        c = d.b();
        b = a.b();
    }

    private h() {
        this.d = new Object();
        this.i = new ArrayList();
    }

    public static <TResult> m a() {
        h hVar = new h();
        hVar.getClass();
        return new m(null);
    }

    public boolean b() {
        boolean z;
        synchronized (this.d) {
            z = this.e;
        }
        return z;
    }

    public boolean c() {
        boolean z;
        synchronized (this.d) {
            z = this.f;
        }
        return z;
    }

    public boolean d() {
        boolean z;
        synchronized (this.d) {
            z = this.h != null;
        }
        return z;
    }

    public TResult e() {
        TResult tResult;
        synchronized (this.d) {
            tResult = this.g;
        }
        return tResult;
    }

    public Exception f() {
        Exception exception;
        synchronized (this.d) {
            exception = this.h;
        }
        return exception;
    }

    public static <TResult> h<TResult> a(TResult tResult) {
        m a = h.a();
        a.b((Object) tResult);
        return a.a();
    }

    public static <TResult> h<TResult> a(Exception exception) {
        m a = h.a();
        a.b(exception);
        return a.a();
    }

    public static <TResult> h<TResult> g() {
        m a = h.a();
        a.c();
        return a.a();
    }

    public static <TResult> h<TResult> a(Callable<TResult> callable, Executor executor) {
        m a = h.a();
        executor.execute(new j(a, callable));
        return a.a();
    }

    public <TContinuationResult> h<TContinuationResult> a(g<TResult, TContinuationResult> gVar, Executor executor) {
        m a = h.a();
        synchronized (this.d) {
            boolean b = b();
            if (!b) {
                this.i.add(new k(this, a, gVar, executor));
            }
        }
        if (b) {
            h.b(a, gVar, this, executor);
        }
        return a.a();
    }

    public <TContinuationResult> h<TContinuationResult> a(g<TResult, TContinuationResult> gVar) {
        return a((g) gVar, c);
    }

    private static <TContinuationResult, TResult> void b(m mVar, g<TResult, TContinuationResult> gVar, h<TResult> hVar, Executor executor) {
        executor.execute(new l(gVar, hVar, mVar));
    }

    private void h() {
        synchronized (this.d) {
            for (g a : this.i) {
                try {
                    a.a(this);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable e2) {
                    throw new RuntimeException(e2);
                }
            }
            this.i = null;
        }
    }
}
