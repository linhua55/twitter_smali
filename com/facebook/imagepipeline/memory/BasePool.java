package com.facebook.imagepipeline.memory;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import android.util.SparseIntArray;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.memory.b;
import defpackage.bx;
import defpackage.by;
import defpackage.ca;
import defpackage.cb;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public abstract class BasePool<V> implements t<V> {
    final b a;
    final y b;
    final SparseArray<e<V>> c;
    final Set<V> d;
    @GuardedBy("this")
    final a e;
    @GuardedBy("this")
    final a f;
    private final Class<?> g;
    private boolean h;
    private final z i;

    /* compiled from: Twttr */
    public class InvalidSizeException extends RuntimeException {
        public InvalidSizeException(Object obj) {
            super("Invalid size: " + obj.toString());
        }
    }

    /* compiled from: Twttr */
    public class PoolSizeViolationException extends RuntimeException {
        public PoolSizeViolationException(int i, int i2, int i3, int i4) {
            super("Pool hard cap violation? Hard cap = " + i + " Used size = " + i2 + " Free size = " + i3 + " Request size = " + i4);
        }
    }

    protected abstract V b(int i);

    protected abstract void b(V v);

    protected abstract int c(int i);

    protected abstract int c(V v);

    protected abstract int d(int i);

    public BasePool(b bVar, y yVar, z zVar) {
        this.g = getClass();
        this.a = (b) bx.a((Object) bVar);
        this.b = (y) bx.a((Object) yVar);
        this.i = (z) bx.a((Object) zVar);
        this.c = new SparseArray();
        a(new SparseIntArray(0));
        this.d = by.a();
        this.f = new a();
        this.e = new a();
    }

    protected void a() {
        this.a.a(this);
        this.i.a(this);
    }

    public V a(int i) {
        V c;
        f();
        int c2 = c(i);
        synchronized (this) {
            e f = f(c2);
            if (f != null) {
                c = f.c();
                if (c != null) {
                    bx.b(this.d.add(c));
                    c2 = c((Object) c);
                    int d = d(c2);
                    this.e.a(d);
                    this.f.b(d);
                    this.i.a(d);
                    g();
                    if (cb.a(2)) {
                        cb.a(this.g, "get (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(c)), Integer.valueOf(c2));
                    }
                }
            }
            int d2 = d(c2);
            if (h(d2)) {
                this.e.a(d2);
                if (f != null) {
                    f.e();
                }
                c = null;
                try {
                    c = b(c2);
                } catch (Throwable th) {
                    synchronized (this) {
                        this.e.b(d2);
                        e f2 = f(c2);
                        if (f2 != null) {
                            f2.f();
                        }
                        ca.a(th);
                    }
                    return c;
                }
                synchronized (this) {
                    bx.b(this.d.add(c));
                    d();
                    this.i.b(d2);
                    g();
                    if (cb.a(2)) {
                        cb.a(this.g, "get (alloc) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(c)), Integer.valueOf(c2));
                    }
                }
            } else {
                throw new PoolSizeViolationException(this.b.a, this.e.b, this.f.b, d2);
            }
        }
        return c;
    }

    public void a(V v) {
        bx.a((Object) v);
        int c = c((Object) v);
        int d = d(c);
        synchronized (this) {
            e f = f(c);
            if (!this.d.remove(v)) {
                cb.c(this.g, "release (free, value unrecognized) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v)), Integer.valueOf(c));
                b((Object) v);
                this.i.c(d);
            } else if (f == null || f.a() || e() || !d((Object) v)) {
                if (f != null) {
                    f.f();
                }
                if (cb.a(2)) {
                    cb.a(this.g, "release (free) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v)), Integer.valueOf(c));
                }
                b((Object) v);
                this.e.b(d);
                this.i.c(d);
            } else {
                f.a(v);
                this.f.a(d);
                this.e.b(d);
                this.i.d(d);
                if (cb.a(2)) {
                    cb.a(this.g, "release (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(v)), Integer.valueOf(c));
                }
            }
            g();
        }
    }

    public void a(MemoryTrimType memoryTrimType) {
        c();
    }

    protected void b() {
    }

    protected boolean d(V v) {
        bx.a((Object) v);
        return true;
    }

    private synchronized void f() {
        boolean z = !e() || this.f.b == 0;
        bx.b(z);
    }

    private synchronized void a(SparseIntArray sparseIntArray) {
        synchronized (this) {
            bx.a((Object) sparseIntArray);
            this.c.clear();
            SparseIntArray sparseIntArray2 = this.b.c;
            if (sparseIntArray2 != null) {
                for (int i = 0; i < sparseIntArray2.size(); i++) {
                    int keyAt = sparseIntArray2.keyAt(i);
                    this.c.put(keyAt, new e(d(keyAt), sparseIntArray2.valueAt(i), sparseIntArray.get(keyAt, 0)));
                }
                this.h = false;
            } else {
                this.h = true;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void c() {
        /*
        r6 = this;
        r1 = 0;
        r3 = new java.util.ArrayList;
        r0 = r6.c;
        r0 = r0.size();
        r3.<init>(r0);
        r4 = new android.util.SparseIntArray;
        r4.<init>();
        monitor-enter(r6);
        r2 = r1;
    L_0x0013:
        r0 = r6.c;	 Catch:{ all -> 0x0062 }
        r0 = r0.size();	 Catch:{ all -> 0x0062 }
        if (r2 >= r0) goto L_0x003d;
    L_0x001b:
        r0 = r6.c;	 Catch:{ all -> 0x0062 }
        r0 = r0.valueAt(r2);	 Catch:{ all -> 0x0062 }
        r0 = (com.facebook.imagepipeline.memory.e) r0;	 Catch:{ all -> 0x0062 }
        r5 = r0.b();	 Catch:{ all -> 0x0062 }
        if (r5 <= 0) goto L_0x002c;
    L_0x0029:
        r3.add(r0);	 Catch:{ all -> 0x0062 }
    L_0x002c:
        r5 = r6.c;	 Catch:{ all -> 0x0062 }
        r5 = r5.keyAt(r2);	 Catch:{ all -> 0x0062 }
        r0 = r0.g();	 Catch:{ all -> 0x0062 }
        r4.put(r5, r0);	 Catch:{ all -> 0x0062 }
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x0013;
    L_0x003d:
        r6.a(r4);	 Catch:{ all -> 0x0062 }
        r0 = r6.f;	 Catch:{ all -> 0x0062 }
        r0.a();	 Catch:{ all -> 0x0062 }
        r6.g();	 Catch:{ all -> 0x0062 }
        monitor-exit(r6);	 Catch:{ all -> 0x0062 }
        r6.b();
    L_0x004c:
        r0 = r3.size();
        if (r1 >= r0) goto L_0x0069;
    L_0x0052:
        r0 = r3.get(r1);
        r0 = (com.facebook.imagepipeline.memory.e) r0;
    L_0x0058:
        r2 = r0.d();
        if (r2 != 0) goto L_0x0065;
    L_0x005e:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x004c;
    L_0x0062:
        r0 = move-exception;
        monitor-exit(r6);	 Catch:{ all -> 0x0062 }
        throw r0;
    L_0x0065:
        r6.b(r2);
        goto L_0x0058;
    L_0x0069:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.memory.BasePool.c():void");
    }

    synchronized void d() {
        if (e()) {
            e(this.b.b);
        }
    }

    synchronized void e(int i) {
        int min = Math.min((this.e.b + this.f.b) - i, this.f.b);
        if (min > 0) {
            if (cb.a(2)) {
                cb.a(this.g, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d", Integer.valueOf(i), Integer.valueOf(this.e.b + this.f.b), Integer.valueOf(min));
            }
            g();
            for (int i2 = 0; i2 < this.c.size() && r1 > 0; i2++) {
                e eVar = (e) this.c.valueAt(i2);
                while (min > 0) {
                    Object d = eVar.d();
                    if (d == null) {
                        break;
                    }
                    b(d);
                    min -= eVar.a;
                    this.f.b(eVar.a);
                }
            }
            g();
            if (cb.a(2)) {
                cb.a(this.g, "trimToSize: TargetSize = %d; Final Size = %d", Integer.valueOf(i), Integer.valueOf(this.e.b + this.f.b));
            }
        }
    }

    synchronized e<V> f(int i) {
        e<V> eVar;
        eVar = (e) this.c.get(i);
        if (eVar == null && this.h) {
            if (cb.a(2)) {
                cb.a(this.g, "creating new bucket %s", Integer.valueOf(i));
            }
            eVar = g(i);
            this.c.put(i, eVar);
        }
        return eVar;
    }

    e<V> g(int i) {
        return new e(d(i), Integer.MAX_VALUE, 0);
    }

    synchronized boolean e() {
        boolean z;
        z = this.e.b + this.f.b > this.b.b;
        if (z) {
            this.i.b();
        }
        return z;
    }

    synchronized boolean h(int i) {
        boolean z = false;
        synchronized (this) {
            int i2 = this.b.a;
            if (this.e.b + i > i2) {
                this.i.c();
            } else {
                int i3 = this.b.b;
                if ((this.e.b + this.f.b) + i > i3) {
                    e(i3 - i);
                }
                if ((this.e.b + this.f.b) + i > i2) {
                    this.i.c();
                } else {
                    z = true;
                }
            }
        }
        return z;
    }

    @SuppressLint({"InvalidAccessToGuardedField"})
    private void g() {
        if (cb.a(2)) {
            cb.a(this.g, "Used = (%d, %d); Free = (%d, %d)", Integer.valueOf(this.e.a), Integer.valueOf(this.e.b), Integer.valueOf(this.f.a), Integer.valueOf(this.f.b));
        }
    }
}
