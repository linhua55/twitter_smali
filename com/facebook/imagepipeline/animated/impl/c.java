package com.facebook.imagepipeline.animated.impl;

import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.support.v4.util.SparseArrayCompat;
import com.facebook.common.references.a;
import com.facebook.common.references.d;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo.DisposalMethod;
import com.facebook.imagepipeline.animated.base.g;
import com.facebook.imagepipeline.animated.base.h;
import com.facebook.imagepipeline.animated.base.j;
import com.facebook.imagepipeline.animated.base.p;
import defpackage.bk;
import defpackage.cb;
import defpackage.cl;
import dt;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public class c extends p implements h {
    private static final Class<?> a;
    private static final AtomicInteger b;
    private final bk c;
    private final dt d;
    private final ActivityManager e;
    private final cl f;
    private final g g;
    private final j h;
    private final AnimatedImageCompositor i;
    private final d<Bitmap> j;
    private final int k;
    private final int l;
    @GuardedBy("this")
    private final List<Bitmap> m;
    @GuardedBy("this")
    private final SparseArrayCompat<h<Object>> n;
    @GuardedBy("this")
    private final SparseArrayCompat<a<Bitmap>> o;
    @GuardedBy("this")
    private final n p;
    @GuardedBy("ui-thread")
    private int q;

    public /* synthetic */ g a(Rect rect) {
        return b(rect);
    }

    static {
        a = c.class;
        b = new AtomicInteger();
    }

    public c(bk bkVar, ActivityManager activityManager, dt dtVar, cl clVar, g gVar, j jVar) {
        super(gVar);
        this.c = bkVar;
        this.e = activityManager;
        this.d = dtVar;
        this.f = clVar;
        this.g = gVar;
        this.h = jVar;
        this.k = jVar.d >= 0 ? jVar.d : a(activityManager);
        this.i = new AnimatedImageCompositor(gVar, new d(this));
        this.j = new e(this);
        this.m = new ArrayList();
        this.n = new SparseArrayCompat(10);
        this.o = new SparseArrayCompat(10);
        this.p = new n(this.g.c());
        this.l = ((this.g.c() * this.g.f()) * this.g.g()) * 4;
    }

    protected synchronized void finalize() throws Throwable {
        super.finalize();
        if (this.o.size() > 0) {
            cb.b(a, "Finalizing with rendered bitmaps");
        }
        b.addAndGet(-this.m.size());
        this.m.clear();
    }

    private Bitmap l() {
        cb.a(a, "Creating new bitmap");
        b.incrementAndGet();
        cb.a(a, "Total bitmaps: %d", Integer.valueOf(b.get()));
        return Bitmap.createBitmap(this.g.f(), this.g.g(), Config.ARGB_8888);
    }

    public void a(int i, Canvas canvas) {
        throw new IllegalStateException();
    }

    public a<Bitmap> g(int i) {
        this.q = i;
        a<Bitmap> a = a(i, false);
        n();
        return a;
    }

    public a<Bitmap> k() {
        return a().c();
    }

    public h b(Rect rect) {
        g a = this.g.a(rect);
        return a == this.g ? this : new c(this.c, this.e, this.d, this.f, a, this.h);
    }

    public synchronized void j() {
        this.p.a(false);
        p();
        for (Bitmap recycle : this.m) {
            recycle.recycle();
            b.decrementAndGet();
        }
        this.m.clear();
        this.g.j();
        cb.a(a, "Total bitmaps: %d", Integer.valueOf(b.get()));
    }

    public int i() {
        int i;
        int i2 = 0;
        synchronized (this) {
            i = 0;
            for (Bitmap a : this.m) {
                i += this.d.a(a);
            }
            while (i2 < this.o.size()) {
                i += this.d.a((Bitmap) ((a) this.o.valueAt(i2)).a());
                i2++;
            }
        }
        return this.g.i() + i;
    }

    public void a(StringBuilder stringBuilder) {
        if (this.h.b) {
            stringBuilder.append("Pinned To Memory");
        } else {
            if (this.l < this.k) {
                stringBuilder.append("within ");
            } else {
                stringBuilder.append("exceeds ");
            }
            this.d.a(stringBuilder, this.k);
        }
        if (o() && this.h.c) {
            stringBuilder.append(" MT");
        }
    }

    private a<Bitmap> a(int i, boolean z) {
        a m;
        Throwable th;
        Object obj;
        long now = this.f.now();
        try {
            synchronized (this) {
                this.p.a(i, true);
                a<Bitmap> i2 = i(i);
                long now2;
                String str;
                if (i2 != null) {
                    now2 = this.f.now() - now;
                    if (now2 > 10) {
                        str = TtmlNode.ANONYMOUS_REGION_ID;
                        cb.a(a, "obtainBitmap for frame %d took %d ms (%s)", Integer.valueOf(i), Long.valueOf(now2), "ok");
                    }
                    return i2;
                }
                if (z) {
                    try {
                        m = m();
                        this.i.a(i, (Bitmap) m.a());
                        a(i, m);
                        i2 = m.b();
                        m.close();
                        now2 = this.f.now() - now;
                        if (now2 > 10) {
                            str = TtmlNode.ANONYMOUS_REGION_ID;
                            cb.a(a, "obtainBitmap for frame %d took %d ms (%s)", Integer.valueOf(i), Long.valueOf(now2), "renderedOnCallingThread");
                        }
                        return i2;
                    } catch (Throwable th2) {
                        th = th2;
                        int i3 = 1;
                        now2 = this.f.now() - now;
                        if (now2 > 10) {
                            String str2 = TtmlNode.ANONYMOUS_REGION_ID;
                            if (obj != null) {
                                obj = "renderedOnCallingThread";
                            } else {
                                obj = "ok";
                            }
                            cb.a(a, "obtainBitmap for frame %d took %d ms (%s)", Integer.valueOf(i), Long.valueOf(now2), obj);
                        }
                        throw th;
                    }
                }
                now2 = this.f.now() - now;
                if (now2 > 10) {
                    str = TtmlNode.ANONYMOUS_REGION_ID;
                    cb.a(a, "obtainBitmap for frame %d took %d ms (%s)", Integer.valueOf(i), Long.valueOf(now2), "deferred");
                }
                return null;
            }
        } catch (Throwable th22) {
            th = th22;
            obj = null;
        }
    }

    private void a(int i, Bitmap bitmap) {
        Object obj = null;
        synchronized (this) {
            if (this.p.a(i) && this.o.get(i) == null) {
                obj = 1;
            }
        }
        if (obj != null) {
            b(i, bitmap);
        }
    }

    private void b(int i, Bitmap bitmap) {
        a m = m();
        try {
            Canvas canvas = new Canvas((Bitmap) m.a());
            canvas.drawColor(0, Mode.SRC);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, null);
            a(i, m);
        } finally {
            m.close();
        }
    }

    private a<Bitmap> m() {
        Object l;
        synchronized (this) {
            long nanoTime = System.nanoTime();
            long convert = TimeUnit.NANOSECONDS.convert(20, TimeUnit.MILLISECONDS) + nanoTime;
            while (this.m.isEmpty() && nanoTime < convert) {
                try {
                    TimeUnit.NANOSECONDS.timedWait(this, convert - nanoTime);
                    nanoTime = System.nanoTime();
                } catch (Throwable e) {
                    Thread.currentThread().interrupt();
                    throw new RuntimeException(e);
                }
            }
            if (this.m.isEmpty()) {
                l = l();
            } else {
                Bitmap bitmap = (Bitmap) this.m.remove(this.m.size() - 1);
            }
        }
        return a.a(l, this.j);
    }

    synchronized void a(Bitmap bitmap) {
        this.m.add(bitmap);
    }

    private synchronized void n() {
        int i = 1;
        synchronized (this) {
            int i2;
            int i3;
            int i4 = this.g.a(this.q).g == DisposalMethod.DISPOSE_TO_PREVIOUS ? 1 : 0;
            int i5 = this.q;
            if (i4 != 0) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            i2 = Math.max(0, i5 - i2);
            if (this.h.c) {
                i3 = 3;
            } else {
                i3 = 0;
            }
            if (i4 == 0) {
                i = 0;
            }
            int max = Math.max(i3, i);
            i = (i2 + max) % this.g.c();
            b(i2, i);
            if (!o()) {
                this.p.a(true);
                this.p.a(i2, i);
                for (i = i2; i >= 0; i--) {
                    if (this.o.get(i) != null) {
                        this.p.a(i, true);
                        break;
                    }
                }
                p();
            }
            if (this.h.c) {
                a(i2, max);
            } else {
                b(this.q, this.q);
            }
        }
    }

    private static int a(ActivityManager activityManager) {
        if (activityManager.getMemoryClass() > 32) {
            return 5242880;
        }
        return 3145728;
    }

    private boolean o() {
        if (!this.h.b && this.l >= this.k) {
            return false;
        }
        return true;
    }

    private synchronized void a(int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            int c = (i + i3) % this.g.c();
            h hVar = (h) this.n.get(c);
            if (!j(c) && hVar == null) {
                hVar = h.a(new f(this, c), this.c);
                this.n.put(c, hVar);
                hVar.a(new g(this, hVar, c));
            }
        }
    }

    private void h(int r6) {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.facebook.imagepipeline.animated.impl.c.h(int):void. bs: [B:16:0x001f, B:22:0x002a]
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:86)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:57)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r5 = this;
        monitor-enter(r5);
        r0 = r5.p;	 Catch:{ all -> 0x0013 }
        r0 = r0.a(r6);	 Catch:{ all -> 0x0013 }
        if (r0 != 0) goto L_0x000b;	 Catch:{ all -> 0x0013 }
    L_0x0009:
        monitor-exit(r5);	 Catch:{ all -> 0x0013 }
    L_0x000a:
        return;	 Catch:{ all -> 0x0013 }
    L_0x000b:
        r0 = r5.j(r6);	 Catch:{ all -> 0x0013 }
        if (r0 == 0) goto L_0x0016;	 Catch:{ all -> 0x0013 }
    L_0x0011:
        monitor-exit(r5);	 Catch:{ all -> 0x0013 }
        goto L_0x000a;	 Catch:{ all -> 0x0013 }
    L_0x0013:
        r0 = move-exception;	 Catch:{ all -> 0x0013 }
        monitor-exit(r5);	 Catch:{ all -> 0x0013 }
        throw r0;
    L_0x0016:
        monitor-exit(r5);	 Catch:{ all -> 0x0013 }
        r0 = r5.g;
        r1 = r0.e(r6);
        if (r1 == 0) goto L_0x0026;
    L_0x001f:
        r5.a(r6, r1);	 Catch:{ all -> 0x0048 }
    L_0x0022:
        com.facebook.common.references.a.c(r1);
        goto L_0x000a;
    L_0x0026:
        r2 = r5.m();	 Catch:{ all -> 0x0048 }
        r3 = r5.i;	 Catch:{ all -> 0x004d }
        r0 = r2.a();	 Catch:{ all -> 0x004d }
        r0 = (android.graphics.Bitmap) r0;	 Catch:{ all -> 0x004d }
        r3.a(r6, r0);	 Catch:{ all -> 0x004d }
        r5.a(r6, r2);	 Catch:{ all -> 0x004d }
        r0 = a;	 Catch:{ all -> 0x004d }
        r3 = "Prefetch rendered frame %d";	 Catch:{ all -> 0x004d }
        r4 = java.lang.Integer.valueOf(r6);	 Catch:{ all -> 0x004d }
        defpackage.cb.a(r0, r3, r4);	 Catch:{ all -> 0x004d }
        r2.close();	 Catch:{ all -> 0x0048 }
        goto L_0x0022;
    L_0x0048:
        r0 = move-exception;
        com.facebook.common.references.a.c(r1);
        throw r0;
    L_0x004d:
        r0 = move-exception;
        r2.close();	 Catch:{ all -> 0x0048 }
        throw r0;	 Catch:{ all -> 0x0048 }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.animated.impl.c.h(int):void");
    }

    private synchronized void a(h<?> hVar, int i) {
        int indexOfKey = this.n.indexOfKey(i);
        if (indexOfKey >= 0 && ((h) this.n.valueAt(indexOfKey)) == hVar) {
            this.n.removeAt(indexOfKey);
            if (hVar.f() != null) {
                cb.a(a, hVar.f(), "Failed to render frame %d", Integer.valueOf(i));
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void b(int r3, int r4) {
        /*
        r2 = this;
        monitor-enter(r2);
        r1 = 0;
    L_0x0002:
        r0 = r2.n;	 Catch:{ all -> 0x002b }
        r0 = r0.size();	 Catch:{ all -> 0x002b }
        if (r1 >= r0) goto L_0x0029;
    L_0x000a:
        r0 = r2.n;	 Catch:{ all -> 0x002b }
        r0 = r0.keyAt(r1);	 Catch:{ all -> 0x002b }
        r0 = dt.a(r3, r4, r0);	 Catch:{ all -> 0x002b }
        if (r0 == 0) goto L_0x0026;
    L_0x0016:
        r0 = r2.n;	 Catch:{ all -> 0x002b }
        r0 = r0.valueAt(r1);	 Catch:{ all -> 0x002b }
        r0 = (h) r0;	 Catch:{ all -> 0x002b }
        r0 = r2.n;	 Catch:{ all -> 0x002b }
        r0.removeAt(r1);	 Catch:{ all -> 0x002b }
        r0 = r1;
    L_0x0024:
        r1 = r0;
        goto L_0x0002;
    L_0x0026:
        r0 = r1 + 1;
        goto L_0x0024;
    L_0x0029:
        monitor-exit(r2);
        return;
    L_0x002b:
        r0 = move-exception;
        monitor-exit(r2);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.animated.impl.c.b(int, int):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void p() {
        /*
        r3 = this;
        monitor-enter(r3);
        r1 = 0;
    L_0x0002:
        r0 = r3.o;	 Catch:{ all -> 0x0030 }
        r0 = r0.size();	 Catch:{ all -> 0x0030 }
        if (r1 >= r0) goto L_0x002e;
    L_0x000a:
        r0 = r3.o;	 Catch:{ all -> 0x0030 }
        r0 = r0.keyAt(r1);	 Catch:{ all -> 0x0030 }
        r2 = r3.p;	 Catch:{ all -> 0x0030 }
        r0 = r2.a(r0);	 Catch:{ all -> 0x0030 }
        if (r0 != 0) goto L_0x002b;
    L_0x0018:
        r0 = r3.o;	 Catch:{ all -> 0x0030 }
        r0 = r0.valueAt(r1);	 Catch:{ all -> 0x0030 }
        r0 = (com.facebook.common.references.a) r0;	 Catch:{ all -> 0x0030 }
        r2 = r3.o;	 Catch:{ all -> 0x0030 }
        r2.removeAt(r1);	 Catch:{ all -> 0x0030 }
        r0.close();	 Catch:{ all -> 0x0030 }
        r0 = r1;
    L_0x0029:
        r1 = r0;
        goto L_0x0002;
    L_0x002b:
        r0 = r1 + 1;
        goto L_0x0029;
    L_0x002e:
        monitor-exit(r3);
        return;
    L_0x0030:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.animated.impl.c.p():void");
    }

    private synchronized void a(int i, a<Bitmap> aVar) {
        if (this.p.a(i)) {
            int indexOfKey = this.o.indexOfKey(i);
            if (indexOfKey >= 0) {
                ((a) this.o.valueAt(indexOfKey)).close();
                this.o.removeAt(indexOfKey);
            }
            this.o.put(i, aVar.b());
        }
    }

    private synchronized a<Bitmap> i(int i) {
        a<Bitmap> b;
        b = a.b((a) this.o.get(i));
        if (b == null) {
            b = this.g.e(i);
        }
        return b;
    }

    private synchronized boolean j(int i) {
        boolean z;
        z = this.o.get(i) != null || this.g.f(i);
        return z;
    }
}
