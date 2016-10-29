package defpackage;

import android.os.SystemClock;
import bx;
import bz;
import com.android.internal.util.Predicate;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.memory.a;
import ej;
import ek;
import el;
import em;
import ex;
import fd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
/* renamed from: ei */
public class ei<K, V> implements a, ew<K, V> {
    static final long a;
    @GuardedBy("this")
    final eh<K, em<K, V>> b;
    @GuardedBy("this")
    final eh<K, em<K, V>> c;
    @GuardedBy("this")
    protected ex d;
    private final fd<V> e;
    private final el f;
    private final bz<ex> g;
    @GuardedBy("this")
    private long h;

    static {
        a = TimeUnit.MINUTES.toMillis(5);
    }

    public ei(fd<V> fdVar, el elVar, bz<ex> bzVar) {
        this.e = fdVar;
        this.b = new eh(a((fd) fdVar));
        this.c = new eh(a((fd) fdVar));
        this.f = elVar;
        this.g = bzVar;
        this.d = (ex) this.g.a();
        this.h = SystemClock.elapsedRealtime();
    }

    private fd<em<K, V>> a(fd<V> fdVar) {
        return new ej(this, fdVar);
    }

    public com.facebook.common.references.a<V> a(K k, com.facebook.common.references.a<V> aVar) {
        com.facebook.common.references.a g;
        com.facebook.common.references.a<V> a;
        bx.a(k);
        bx.a(aVar);
        c();
        synchronized (this) {
            this.b.b(k);
            em emVar = (em) this.c.b(k);
            if (emVar != null) {
                d(emVar);
                g = g(emVar);
            } else {
                g = null;
            }
            if (b(aVar.a())) {
                emVar = em.a(k, aVar);
                this.c.a(k, emVar);
                a = a(emVar);
            } else {
                a = null;
            }
        }
        com.facebook.common.references.a.c(g);
        d();
        return a;
    }

    private synchronized boolean b(V v) {
        boolean z;
        int a = this.e.a(v);
        z = a <= this.d.e && a() + 1 <= this.d.b && a + b() <= this.d.a;
        return z;
    }

    @Nullable
    public com.facebook.common.references.a<V> a(K k) {
        com.facebook.common.references.a<V> a;
        synchronized (this) {
            this.b.b(k);
            em emVar = (em) this.c.a((Object) k);
            if (emVar != null) {
                a = a(emVar);
            } else {
                a = null;
            }
        }
        c();
        d();
        return a;
    }

    private synchronized com.facebook.common.references.a<V> a(em<K, V> emVar) {
        e(emVar);
        return com.facebook.common.references.a.a(emVar.b.a(), new ek(this, emVar));
    }

    private void b(em<K, V> emVar) {
        com.facebook.common.references.a g;
        bx.a(emVar);
        synchronized (this) {
            f(emVar);
            c(emVar);
            g = g(emVar);
        }
        com.facebook.common.references.a.c(g);
        c();
        d();
    }

    private synchronized void c(em<K, V> emVar) {
        if (!emVar.d && emVar.c == 0) {
            this.b.a(emVar.a, emVar);
        }
    }

    public int a(Predicate<K> predicate) {
        ArrayList a;
        synchronized (this) {
            this.b.a((Predicate) predicate);
            a = this.c.a((Predicate) predicate);
            b(a);
        }
        a(a);
        c();
        d();
        return a.size();
    }

    public void a(MemoryTrimType memoryTrimType) {
        ArrayList a;
        double a2 = this.f.a(memoryTrimType);
        synchronized (this) {
            a = a((int) ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, Math.max(0, ((int) ((1.0d - a2) * ((double) this.c.b()))) - b()));
            b(a);
        }
        a(a);
        c();
        d();
    }

    private synchronized void c() {
        if (this.h + a <= SystemClock.elapsedRealtime()) {
            this.h = SystemClock.elapsedRealtime();
            this.d = (ex) this.g.a();
        }
    }

    private void d() {
        ArrayList a;
        synchronized (this) {
            a = a(Math.min(this.d.d, this.d.b - a()), Math.min(this.d.c, this.d.a - b()));
            b(a);
        }
        a(a);
    }

    @Nullable
    private synchronized ArrayList<em<K, V>> a(int i, int i2) {
        ArrayList<em<K, V>> arrayList;
        int max = Math.max(i, 0);
        int max2 = Math.max(i2, 0);
        if (this.b.a() > max || this.b.b() > max2) {
            arrayList = new ArrayList();
            while (true) {
                if (this.b.a() <= max && this.b.b() <= max2) {
                    break;
                }
                Object c = this.b.c();
                this.b.b(c);
                arrayList.add(this.c.b(c));
            }
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    private void a(@Nullable ArrayList<em<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                com.facebook.common.references.a.c(g((em) it.next()));
            }
        }
    }

    private synchronized void b(@Nullable ArrayList<em<K, V>> arrayList) {
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                d((em) it.next());
            }
        }
    }

    private synchronized void d(em<K, V> emVar) {
        boolean z = true;
        synchronized (this) {
            bx.a(emVar);
            if (emVar.d) {
                z = false;
            }
            bx.b(z);
            emVar.d = true;
        }
    }

    private synchronized void e(em<K, V> emVar) {
        bx.a(emVar);
        bx.b(!emVar.d);
        emVar.c++;
    }

    private synchronized void f(em<K, V> emVar) {
        bx.a(emVar);
        bx.b(emVar.c > 0);
        emVar.c--;
    }

    @Nullable
    private synchronized com.facebook.common.references.a<V> g(em<K, V> emVar) {
        com.facebook.common.references.a<V> aVar;
        bx.a(emVar);
        aVar = (emVar.d && emVar.c == 0) ? emVar.b : null;
        return aVar;
    }

    public synchronized int a() {
        return this.c.a() - this.b.a();
    }

    public synchronized int b() {
        return this.c.b() - this.b.b();
    }
}
