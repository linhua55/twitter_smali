package com.facebook.datasource;

import android.util.Pair;
import bx;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public abstract class AbstractDataSource<T> implements d<T> {
    @GuardedBy("this")
    private DataSourceStatus a;
    @GuardedBy("this")
    private boolean b;
    @GuardedBy("this")
    @Nullable
    private T c;
    @GuardedBy("this")
    private Throwable d;
    @GuardedBy("this")
    private float e;
    private final ConcurrentLinkedQueue<Pair<g<T>, Executor>> f;

    protected AbstractDataSource() {
        this.c = null;
        this.d = null;
        this.e = 0.0f;
        this.b = false;
        this.a = DataSourceStatus.a;
        this.f = new ConcurrentLinkedQueue();
    }

    public synchronized boolean a() {
        return this.b;
    }

    public synchronized boolean b() {
        return this.a != DataSourceStatus.a;
    }

    public synchronized boolean c() {
        return this.c != null;
    }

    @Nullable
    public synchronized T d() {
        return this.c;
    }

    public synchronized boolean e() {
        return this.a == DataSourceStatus.c;
    }

    @Nullable
    public synchronized Throwable f() {
        return this.d;
    }

    public synchronized float g() {
        return this.e;
    }

    public boolean h() {
        boolean z = true;
        synchronized (this) {
            if (this.b) {
                z = false;
            } else {
                this.b = true;
                Object obj = this.c;
                this.c = null;
                if (obj != null) {
                    a(obj);
                }
                if (!b()) {
                    j();
                }
                synchronized (this) {
                    this.f.clear();
                }
            }
        }
        return z;
    }

    protected void a(@Nullable T t) {
    }

    public void a(g<T> gVar, Executor executor) {
        bx.a(gVar);
        bx.a(executor);
        synchronized (this) {
            if (this.b) {
                return;
            }
            if (this.a == DataSourceStatus.a) {
                this.f.add(Pair.create(gVar, executor));
            }
            Object obj = (c() || b() || k()) ? 1 : null;
            if (obj != null) {
                a(gVar, executor, e(), k());
            }
        }
    }

    private void j() {
        boolean e = e();
        boolean k = k();
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            a((g) pair.first, (Executor) pair.second, e, k);
        }
    }

    private void a(g<T> gVar, Executor executor, boolean z, boolean z2) {
        executor.execute(new a(this, z, gVar, z2));
    }

    private synchronized boolean k() {
        boolean z;
        z = a() && !b();
        return z;
    }

    protected boolean a(@Nullable T t, boolean z) {
        boolean b = b(t, z);
        if (b) {
            j();
        }
        return b;
    }

    protected boolean a(Throwable th) {
        boolean b = b(th);
        if (b) {
            j();
        }
        return b;
    }

    protected boolean a(float f) {
        boolean b = b(f);
        if (b) {
            i();
        }
        return b;
    }

    private boolean b(@Nullable T t, boolean z) {
        Throwable th;
        try {
            synchronized (this) {
                try {
                    boolean z2;
                    if (this.b || this.a != DataSourceStatus.a) {
                        z2 = false;
                        try {
                            if (t != null) {
                                a((Object) t);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                    } else {
                        if (z) {
                            this.a = DataSourceStatus.b;
                            this.e = 1.0f;
                        }
                        if (this.c != t) {
                            T t2 = this.c;
                            try {
                                this.c = t;
                                t = t2;
                            } catch (Throwable th4) {
                                th = th4;
                                t = t2;
                                throw th;
                            }
                        } else {
                            t = null;
                        }
                        z2 = true;
                        if (t != null) {
                            a((Object) t);
                        }
                    }
                    return z2;
                } catch (Throwable th5) {
                    th = th5;
                    t = null;
                    throw th;
                }
            }
        } catch (Throwable th6) {
            th = th6;
            t = null;
            if (r4 != null) {
                a(r4);
            }
            throw th;
        }
    }

    private synchronized boolean b(Throwable th) {
        boolean z;
        if (this.b || this.a != DataSourceStatus.a) {
            z = false;
        } else {
            this.a = DataSourceStatus.c;
            this.d = th;
            z = true;
        }
        return z;
    }

    private synchronized boolean b(float f) {
        boolean z = false;
        synchronized (this) {
            if (!this.b && this.a == DataSourceStatus.a) {
                if (f >= this.e) {
                    this.e = f;
                    z = true;
                }
            }
        }
        return z;
    }

    protected void i() {
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            ((Executor) pair.second).execute(new b(this, (g) pair.first));
        }
    }
}
