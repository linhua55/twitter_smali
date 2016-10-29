package com.twitter.media.filters;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.opengles.GL10;

/* compiled from: Twttr */
class q extends Thread {
    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private boolean o;
    private ArrayList<Runnable> p;
    private boolean q;
    private p r;
    private WeakReference<GLTextureView> s;

    q(WeakReference<GLTextureView> weakReference) {
        this.p = new ArrayList();
        this.q = true;
        this.k = 0;
        this.l = 0;
        this.n = true;
        this.m = 1;
        this.s = weakReference;
    }

    public void run() {
        setName("GLThread " + getId());
        try {
            l();
        } catch (InterruptedException e) {
        } finally {
            GLTextureView.a.a(this);
        }
    }

    private void j() {
        if (this.i) {
            this.i = false;
            this.r.e();
        }
    }

    private void k() {
        if (this.h) {
            this.r.f();
            this.h = false;
            GLTextureView.a.c(this);
        }
    }

    private void l() throws InterruptedException {
        this.r = new p(this.s);
        this.h = false;
        this.i = false;
        Object obj = null;
        GL10 gl10 = null;
        int i = 0;
        Object obj2 = null;
        Object obj3 = null;
        Object obj4 = null;
        Object obj5 = null;
        Object obj6 = null;
        Object obj7 = null;
        Runnable runnable = null;
        int i2 = 0;
        Object obj8 = null;
        while (true) {
            try {
                synchronized (GLTextureView.a) {
                    while (true) {
                        if (this.a) {
                            synchronized (GLTextureView.a) {
                                j();
                                k();
                            }
                            return;
                        }
                        GLTextureView gLTextureView;
                        Object obj9;
                        int i3;
                        Runnable runnable2;
                        Object obj10;
                        int i4;
                        int i5;
                        if (this.p.isEmpty()) {
                            boolean z = this.d;
                            boolean z2 = this.c;
                            if (z != r0) {
                                boolean z3 = this.c;
                                this.d = this.c;
                                GLTextureView.a.notifyAll();
                                z = z3;
                            } else {
                                z = false;
                            }
                            if (this.j) {
                                j();
                                k();
                                this.j = false;
                                obj2 = 1;
                            }
                            if (obj5 != null) {
                                j();
                                k();
                                obj5 = null;
                            }
                            if (z && this.i) {
                                j();
                            }
                            if (z && this.h) {
                                gLTextureView = (GLTextureView) this.s.get();
                                if (!(gLTextureView == null ? false : gLTextureView.l) || GLTextureView.a.a()) {
                                    k();
                                }
                            }
                            if (z && GLTextureView.a.b()) {
                                this.r.f();
                            }
                            if (!(this.e || this.g)) {
                                if (this.i) {
                                    j();
                                }
                                this.g = true;
                                this.f = false;
                                GLTextureView.a.notifyAll();
                            }
                            if (this.e && this.g) {
                                this.g = false;
                                GLTextureView.a.notifyAll();
                            }
                            if (obj8 != null) {
                                obj3 = null;
                                obj8 = null;
                                this.o = true;
                                GLTextureView.a.notifyAll();
                            }
                            if (m()) {
                                if (!this.h) {
                                    if (obj2 != null) {
                                        obj2 = null;
                                    } else if (GLTextureView.a.b(this)) {
                                        this.r.a();
                                        this.h = true;
                                        obj = 1;
                                        GLTextureView.a.notifyAll();
                                    }
                                }
                                if (!this.h || this.i) {
                                    obj9 = obj4;
                                    obj4 = obj6;
                                } else {
                                    this.i = true;
                                    obj7 = 1;
                                    obj9 = 1;
                                    obj4 = 1;
                                }
                                if (this.i) {
                                    Object obj11;
                                    int i6;
                                    if (this.q) {
                                        obj3 = 1;
                                        i = this.k;
                                        i3 = this.l;
                                        obj11 = 1;
                                        obj6 = 1;
                                        this.q = false;
                                    } else {
                                        obj6 = obj7;
                                        i6 = i2;
                                        obj11 = obj3;
                                        obj3 = obj9;
                                        i3 = i;
                                        i = i6;
                                    }
                                    this.n = false;
                                    GLTextureView.a.notifyAll();
                                    obj7 = obj4;
                                    obj4 = obj11;
                                    runnable2 = runnable;
                                    obj10 = obj8;
                                    i4 = i;
                                    i6 = i3;
                                    obj9 = obj6;
                                    obj6 = obj5;
                                    obj5 = obj3;
                                    obj3 = obj2;
                                    i5 = i6;
                                } else {
                                    obj6 = obj4;
                                    obj4 = obj9;
                                }
                            }
                            GLTextureView.a.wait();
                        } else {
                            obj10 = obj8;
                            i4 = i2;
                            runnable2 = (Runnable) this.p.remove(0);
                            obj9 = obj7;
                            obj7 = obj6;
                            obj6 = obj5;
                            obj5 = obj4;
                            obj4 = obj3;
                            obj3 = obj2;
                            i5 = i;
                        }
                        Object obj12;
                        if (runnable2 != null) {
                            runnable2.run();
                            i = i5;
                            obj2 = obj3;
                            obj3 = obj4;
                            obj4 = obj5;
                            obj5 = obj6;
                            obj6 = obj7;
                            obj7 = obj9;
                            obj12 = obj10;
                            runnable = null;
                            i2 = i4;
                            obj8 = obj12;
                        } else {
                            Object obj13;
                            GL10 gl102;
                            if (obj9 == null) {
                                obj13 = obj9;
                            } else if (this.r.b()) {
                                obj13 = null;
                            } else {
                                synchronized (GLTextureView.a) {
                                    this.f = true;
                                    GLTextureView.a.notifyAll();
                                }
                                i = i5;
                                obj2 = obj3;
                                obj3 = obj4;
                                obj4 = obj5;
                                obj5 = obj6;
                                obj6 = obj7;
                                obj7 = obj9;
                                obj12 = obj10;
                                runnable = runnable2;
                                i2 = i4;
                                obj8 = obj12;
                            }
                            if (obj7 != null) {
                                GL10 gl103 = (GL10) this.r.c();
                                GLTextureView.a.a(gl103);
                                obj7 = null;
                                gl102 = gl103;
                            } else {
                                gl102 = gl10;
                            }
                            if (obj != null) {
                                gLTextureView = (GLTextureView) this.s.get();
                                if (gLTextureView != null) {
                                    gLTextureView.d.a(gl102, this.r.d);
                                }
                                obj = null;
                            }
                            if (obj5 != null) {
                                gLTextureView = (GLTextureView) this.s.get();
                                if (gLTextureView != null) {
                                    gLTextureView.d.a(gl102, i4, i5);
                                }
                                obj5 = null;
                            }
                            gLTextureView = (GLTextureView) this.s.get();
                            if (gLTextureView != null) {
                                gLTextureView.d.a(gl102);
                            }
                            i3 = this.r.d();
                            switch (i3) {
                                case 12288:
                                    break;
                                case 12302:
                                    obj6 = 1;
                                    break;
                                default:
                                    p.a("GLThread", "eglSwapBuffers", i3);
                                    synchronized (GLTextureView.a) {
                                        this.f = true;
                                        GLTextureView.a.notifyAll();
                                        break;
                                    }
                            }
                            if (obj4 != null) {
                                obj9 = 1;
                            } else {
                                obj9 = obj10;
                            }
                            runnable = runnable2;
                            gl10 = gl102;
                            i2 = i4;
                            obj8 = obj9;
                            obj12 = obj3;
                            obj3 = obj4;
                            obj4 = obj5;
                            obj5 = obj6;
                            obj6 = obj7;
                            obj7 = obj13;
                            i = i5;
                            obj2 = obj12;
                        }
                    }
                }
            } catch (RuntimeException e) {
                GLTextureView.a.c(this);
                throw e;
            } catch (Throwable th) {
                synchronized (GLTextureView.a) {
                }
                j();
                k();
            }
        }
    }

    public boolean a() {
        return this.h && this.i && m();
    }

    private boolean m() {
        return !this.d && this.e && !this.f && this.k > 0 && this.l > 0 && (this.n || this.m == 1);
    }

    public void a(int i) {
        if (i < 0 || i > 1) {
            throw new IllegalArgumentException("renderMode");
        }
        synchronized (GLTextureView.a) {
            this.m = i;
            GLTextureView.a.notifyAll();
        }
    }

    public int b() {
        int i;
        synchronized (GLTextureView.a) {
            i = this.m;
        }
        return i;
    }

    public void c() {
        synchronized (GLTextureView.a) {
            this.n = true;
            GLTextureView.a.notifyAll();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void d() {
        /*
        r2 = this;
        r1 = com.twitter.media.filters.GLTextureView.a;
        monitor-enter(r1);
        r0 = 1;
        r2.e = r0;	 Catch:{ all -> 0x0028 }
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ all -> 0x0028 }
        r0.notifyAll();	 Catch:{ all -> 0x0028 }
    L_0x000f:
        r0 = r2.g;	 Catch:{ all -> 0x0028 }
        if (r0 == 0) goto L_0x002b;
    L_0x0013:
        r0 = r2.b;	 Catch:{ all -> 0x0028 }
        if (r0 != 0) goto L_0x002b;
    L_0x0017:
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ InterruptedException -> 0x001f }
        r0.wait();	 Catch:{ InterruptedException -> 0x001f }
        goto L_0x000f;
    L_0x001f:
        r0 = move-exception;
        r0 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0028 }
        r0.interrupt();	 Catch:{ all -> 0x0028 }
        goto L_0x000f;
    L_0x0028:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0028 }
        throw r0;
    L_0x002b:
        monitor-exit(r1);	 Catch:{ all -> 0x0028 }
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.filters.q.d():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void e() {
        /*
        r2 = this;
        r1 = com.twitter.media.filters.GLTextureView.a;
        monitor-enter(r1);
        r0 = 0;
        r2.e = r0;	 Catch:{ all -> 0x0028 }
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ all -> 0x0028 }
        r0.notifyAll();	 Catch:{ all -> 0x0028 }
    L_0x000f:
        r0 = r2.g;	 Catch:{ all -> 0x0028 }
        if (r0 != 0) goto L_0x002b;
    L_0x0013:
        r0 = r2.b;	 Catch:{ all -> 0x0028 }
        if (r0 != 0) goto L_0x002b;
    L_0x0017:
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ InterruptedException -> 0x001f }
        r0.wait();	 Catch:{ InterruptedException -> 0x001f }
        goto L_0x000f;
    L_0x001f:
        r0 = move-exception;
        r0 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0028 }
        r0.interrupt();	 Catch:{ all -> 0x0028 }
        goto L_0x000f;
    L_0x0028:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0028 }
        throw r0;
    L_0x002b:
        monitor-exit(r1);	 Catch:{ all -> 0x0028 }
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.filters.q.e():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void f() {
        /*
        r2 = this;
        r1 = com.twitter.media.filters.GLTextureView.a;
        monitor-enter(r1);
        r0 = 1;
        r2.c = r0;	 Catch:{ all -> 0x0028 }
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ all -> 0x0028 }
        r0.notifyAll();	 Catch:{ all -> 0x0028 }
    L_0x000f:
        r0 = r2.b;	 Catch:{ all -> 0x0028 }
        if (r0 != 0) goto L_0x002b;
    L_0x0013:
        r0 = r2.d;	 Catch:{ all -> 0x0028 }
        if (r0 != 0) goto L_0x002b;
    L_0x0017:
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ InterruptedException -> 0x001f }
        r0.wait();	 Catch:{ InterruptedException -> 0x001f }
        goto L_0x000f;
    L_0x001f:
        r0 = move-exception;
        r0 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0028 }
        r0.interrupt();	 Catch:{ all -> 0x0028 }
        goto L_0x000f;
    L_0x0028:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0028 }
        throw r0;
    L_0x002b:
        monitor-exit(r1);	 Catch:{ all -> 0x0028 }
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.filters.q.f():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void g() {
        /*
        r2 = this;
        r1 = com.twitter.media.filters.GLTextureView.a;
        monitor-enter(r1);
        r0 = 0;
        r2.c = r0;	 Catch:{ all -> 0x0032 }
        r0 = 1;
        r2.n = r0;	 Catch:{ all -> 0x0032 }
        r0 = 0;
        r2.o = r0;	 Catch:{ all -> 0x0032 }
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ all -> 0x0032 }
        r0.notifyAll();	 Catch:{ all -> 0x0032 }
    L_0x0015:
        r0 = r2.b;	 Catch:{ all -> 0x0032 }
        if (r0 != 0) goto L_0x0035;
    L_0x0019:
        r0 = r2.d;	 Catch:{ all -> 0x0032 }
        if (r0 == 0) goto L_0x0035;
    L_0x001d:
        r0 = r2.o;	 Catch:{ all -> 0x0032 }
        if (r0 != 0) goto L_0x0035;
    L_0x0021:
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ InterruptedException -> 0x0029 }
        r0.wait();	 Catch:{ InterruptedException -> 0x0029 }
        goto L_0x0015;
    L_0x0029:
        r0 = move-exception;
        r0 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0032 }
        r0.interrupt();	 Catch:{ all -> 0x0032 }
        goto L_0x0015;
    L_0x0032:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0032 }
        throw r0;
    L_0x0035:
        monitor-exit(r1);	 Catch:{ all -> 0x0032 }
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.filters.q.g():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r3, int r4) {
        /*
        r2 = this;
        r1 = com.twitter.media.filters.GLTextureView.a;
        monitor-enter(r1);
        r2.k = r3;	 Catch:{ all -> 0x003c }
        r2.l = r4;	 Catch:{ all -> 0x003c }
        r0 = 1;
        r2.q = r0;	 Catch:{ all -> 0x003c }
        r0 = 1;
        r2.n = r0;	 Catch:{ all -> 0x003c }
        r0 = 0;
        r2.o = r0;	 Catch:{ all -> 0x003c }
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ all -> 0x003c }
        r0.notifyAll();	 Catch:{ all -> 0x003c }
    L_0x0019:
        r0 = r2.b;	 Catch:{ all -> 0x003c }
        if (r0 != 0) goto L_0x003f;
    L_0x001d:
        r0 = r2.d;	 Catch:{ all -> 0x003c }
        if (r0 != 0) goto L_0x003f;
    L_0x0021:
        r0 = r2.o;	 Catch:{ all -> 0x003c }
        if (r0 != 0) goto L_0x003f;
    L_0x0025:
        r0 = r2.a();	 Catch:{ all -> 0x003c }
        if (r0 == 0) goto L_0x003f;
    L_0x002b:
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ InterruptedException -> 0x0033 }
        r0.wait();	 Catch:{ InterruptedException -> 0x0033 }
        goto L_0x0019;
    L_0x0033:
        r0 = move-exception;
        r0 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x003c }
        r0.interrupt();	 Catch:{ all -> 0x003c }
        goto L_0x0019;
    L_0x003c:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x003c }
        throw r0;
    L_0x003f:
        monitor-exit(r1);	 Catch:{ all -> 0x003c }
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.filters.q.a(int, int):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void h() {
        /*
        r2 = this;
        r1 = com.twitter.media.filters.GLTextureView.a;
        monitor-enter(r1);
        r0 = 1;
        r2.a = r0;	 Catch:{ all -> 0x0024 }
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ all -> 0x0024 }
        r0.notifyAll();	 Catch:{ all -> 0x0024 }
    L_0x000f:
        r0 = r2.b;	 Catch:{ all -> 0x0024 }
        if (r0 != 0) goto L_0x0027;
    L_0x0013:
        r0 = com.twitter.media.filters.GLTextureView.a;	 Catch:{ InterruptedException -> 0x001b }
        r0.wait();	 Catch:{ InterruptedException -> 0x001b }
        goto L_0x000f;
    L_0x001b:
        r0 = move-exception;
        r0 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0024 }
        r0.interrupt();	 Catch:{ all -> 0x0024 }
        goto L_0x000f;
    L_0x0024:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0024 }
        throw r0;
    L_0x0027:
        monitor-exit(r1);	 Catch:{ all -> 0x0024 }
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.media.filters.q.h():void");
    }

    public void i() {
        this.j = true;
        GLTextureView.a.notifyAll();
    }
}
