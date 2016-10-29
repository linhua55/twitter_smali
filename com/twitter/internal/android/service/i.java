package com.twitter.internal.android.service;

import android.os.Process;
import defpackage.bbk;
import defpackage.bbn;

/* compiled from: Twttr */
class i<S> extends w {
    final /* synthetic */ AsyncService a;
    private final String b;
    private final AsyncOperation<?, S> e;
    private final AsyncOperation f;
    private final l g;
    private final l h;
    private final ab<S> i;

    i(AsyncService asyncService, AsyncOperation<?, S> asyncOperation) {
        i iVar;
        AsyncOperation asyncOperation2;
        l lVar = null;
        this.a = asyncService;
        super(asyncOperation.i());
        String o = asyncOperation.o();
        this.e = asyncOperation;
        this.i = new ab();
        this.b = o;
        this.g = new l();
        if (o != null) {
            iVar = (i) asyncService.d.put(o, this);
        } else {
            iVar = null;
        }
        if (iVar != null) {
            asyncOperation2 = iVar.e;
        } else {
            asyncOperation2 = null;
        }
        this.f = asyncOperation2;
        if (iVar != null) {
            lVar = iVar.g;
        }
        this.h = lVar;
    }

    public void run() {
        bbk a = bbn.a();
        try {
            a.a(new j(this));
        } finally {
            a.d();
        }
    }

    private boolean b() {
        try {
            this.i.a(this.e.d());
            if (c()) {
                return false;
            }
            return true;
        } catch (InterruptedException e) {
            return true;
        }
    }

    private boolean c() {
        ac acVar = this.e.f;
        if (acVar == null || !acVar.a(this.i)) {
            return false;
        }
        this.e.b(this.i);
        m mVar = new m(this.a, this);
        if (!this.e.a(mVar)) {
            return false;
        }
        this.a.f.add(mVar);
        this.a.b.a(mVar, acVar.b(this.i));
        return true;
    }

    private void d() {
        int myTid = Process.myTid();
        if (Process.getThreadPriority(myTid) != 10) {
            Process.setThreadPriority(myTid, 10);
        }
    }

    private void e() {
        if (this.e.isCancelled() && this.i.b() == null) {
            this.i.a(this.e.c());
        }
        this.e.c(this.i);
        this.e.r();
        this.e.a(this.i);
        this.a.b.a(new h(this.a, this.e));
        this.g.b();
        if (this.b != null && this.a.d.get(this.b) == this) {
            synchronized (this.a.d) {
                if (this.a.d.get(this.b) == this) {
                    this.a.d.remove(this.b);
                }
            }
        }
    }

    public void a(Runnable runnable) {
        if (this.h != null) {
            this.h.a(runnable);
        } else {
            runnable.run();
        }
    }

    public void a() {
        this.g.a();
    }

    public void b(Runnable runnable) {
        if (this.h != null) {
            this.h.b(runnable);
        } else {
            runnable.run();
        }
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }
}
