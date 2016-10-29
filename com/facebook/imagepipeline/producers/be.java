package com.facebook.imagepipeline.producers;

import android.util.Pair;
import bx;
import by;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.producers.bc$com.facebook.imagepipeline.producers.be.com.facebook.imagepipeline.producers.bg;
import java.io.Closeable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
class be {
    final /* synthetic */ bc a;
    private final K b;
    private final CopyOnWriteArraySet<Pair<o<T>, bx>> c;
    @GuardedBy("Multiplexer.this")
    @Nullable
    private T d;
    @GuardedBy("Multiplexer.this")
    private float e;
    @GuardedBy("Multiplexer.this")
    @Nullable
    private f f;
    @GuardedBy("Multiplexer.this")
    @Nullable
    private bg g;

    public be(bc bcVar, K k) {
        this.a = bcVar;
        this.c = by.b();
        this.b = k;
    }

    public boolean a(o<T> oVar, bx bxVar) {
        Pair create = Pair.create(oVar, bxVar);
        synchronized (this) {
            if (bc.a(this.a, this.b) != this) {
                return false;
            }
            this.c.add(create);
            List b = b();
            List f = f();
            List d = d();
            Closeable closeable = this.d;
            float f2 = this.e;
            f.b(b);
            f.d(f);
            f.c(d);
            synchronized (create) {
                synchronized (this) {
                    if (closeable != this.d) {
                        closeable = null;
                    } else if (closeable != null) {
                        closeable = this.a.a(closeable);
                    }
                }
                if (closeable != null) {
                    if (f2 > 0.0f) {
                        oVar.b(f2);
                    }
                    oVar.b(closeable, false);
                    a(closeable);
                }
            }
            a(create, bxVar);
            return true;
        }
    }

    private void a(Pair<o<T>, bx> pair, bx bxVar) {
        bxVar.a(new bf(this, pair));
    }

    private void a() {
        boolean z = true;
        synchronized (this) {
            bx.a(this.f == null);
            if (this.g != null) {
                z = false;
            }
            bx.a(z);
            if (this.c.isEmpty()) {
                bc.a(this.a, this.b, this);
                return;
            }
            bx bxVar = (bx) ((Pair) this.c.iterator().next()).second;
            this.f = new f(bxVar.a(), bxVar.b(), bxVar.c(), bxVar.d(), bxVar.e(), c(), e(), g());
            this.g = new bg(this, null);
            f fVar = this.f;
            bg bgVar = this.g;
            bc.a(this.a).a(bgVar, fVar);
        }
    }

    @Nullable
    private synchronized List<by> b() {
        List<by> list;
        if (this.f == null) {
            list = null;
        } else {
            list = this.f.a(c());
        }
        return list;
    }

    private synchronized boolean c() {
        boolean z;
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            if (!((bx) ((Pair) it.next()).second).f()) {
                z = false;
                break;
            }
        }
        z = true;
        return z;
    }

    @Nullable
    private synchronized List<by> d() {
        List<by> list;
        if (this.f == null) {
            list = null;
        } else {
            list = this.f.b(e());
        }
        return list;
    }

    private synchronized boolean e() {
        boolean z;
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            if (((bx) ((Pair) it.next()).second).h()) {
                z = true;
                break;
            }
        }
        z = false;
        return z;
    }

    @Nullable
    private synchronized List<by> f() {
        List<by> list;
        if (this.f == null) {
            list = null;
        } else {
            list = this.f.a(g());
        }
        return list;
    }

    private synchronized Priority g() {
        Priority priority;
        Priority priority2 = Priority.a;
        Iterator it = this.c.iterator();
        priority = priority2;
        while (it.hasNext()) {
            priority = Priority.a(priority, ((bx) ((Pair) it.next()).second).g());
        }
        return priority;
    }

    public void a(bg bgVar, Throwable th) {
        synchronized (this) {
            if (this.g != bgVar) {
                return;
            }
            Iterator it = this.c.iterator();
            this.c.clear();
            bc.a(this.a, this.b, this);
            a(this.d);
            this.d = null;
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                synchronized (pair) {
                    ((o) pair.first).b(th);
                }
            }
        }
    }

    public void a(bg bgVar, T t, boolean z) {
        synchronized (this) {
            if (this.g != bgVar) {
                return;
            }
            a(this.d);
            this.d = null;
            Iterator it = this.c.iterator();
            if (z) {
                this.c.clear();
                bc.a(this.a, this.b, this);
            } else {
                this.d = this.a.a(t);
            }
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                synchronized (pair) {
                    ((o) pair.first).b(t, z);
                }
            }
        }
    }

    public void a(bg bgVar) {
        synchronized (this) {
            if (this.g != bgVar) {
                return;
            }
            this.g = null;
            this.f = null;
            a(this.d);
            this.d = null;
            a();
        }
    }

    public void a(bg bgVar, float f) {
        synchronized (this) {
            if (this.g != bgVar) {
                return;
            }
            this.e = f;
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                synchronized (pair) {
                    ((o) pair.first).b(f);
                }
            }
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
    }
}
