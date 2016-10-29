package com.twitter.internal.android.service;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import android.util.Pair;
import com.twitter.android.mx;
import com.twitter.util.aj;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import tv.periscope.chatman.api.ControlMessage;

/* compiled from: Twttr */
public abstract class AsyncOperation<T, S> implements Future<S> {
    private final List<Pair<c, ExecutionClass>> a;
    private final Handler b;
    private m<S> c;
    public final String d;
    public final String e;
    ac<S> f;
    private Future g;
    private int h;
    private ab<S> i;
    private int j;
    private ExecutionClass k;
    private boolean l;

    /* compiled from: Twttr */
    public enum ExecutionClass {
        NETWORK_NORMAL,
        NETWORK_LONG,
        LOCAL_DISK,
        CPU_INTENSIVE,
        MEDIA_CODEC,
        LOW_PRIORITY,
        SERIAL_BACKGROUND,
        MAIN_THREAD
    }

    protected abstract S c();

    protected abstract S d() throws InterruptedException;

    protected AsyncOperation(String str) {
        this(str, new Handler(Looper.getMainLooper()));
    }

    protected AsyncOperation(String str, Handler handler) {
        this.a = new CopyOnWriteArrayList();
        this.k = ExecutionClass.NETWORK_NORMAL;
        this.d = aj.a(6);
        this.e = str;
        this.h = 1;
        this.b = handler;
    }

    public final <E extends AsyncOperation> E b(int i) {
        this.j = i;
        return this;
    }

    public final int i() {
        return this.j;
    }

    public void a(ExecutionClass executionClass) {
        if (executionClass == ExecutionClass.MAIN_THREAD) {
            throw new IllegalArgumentException("Async operations should not run on the main thread.");
        }
        this.k = executionClass;
    }

    protected ExecutionClass j() {
        return this.k;
    }

    public final <E extends AsyncOperation<T, S>> E a(c<T, E> cVar) {
        return a((c) cVar, ExecutionClass.MAIN_THREAD);
    }

    public final <E extends AsyncOperation<T, S>> E a(c<T, E> cVar, ExecutionClass executionClass) {
        b(cVar, executionClass);
        return this;
    }

    @VisibleForTesting
    protected final <E extends AsyncOperation<T, S>> boolean b(c<T, E> cVar, ExecutionClass executionClass) {
        if (cVar != null) {
            synchronized (this) {
                if (this.h != 6) {
                    this.a.add(new Pair(cVar, executionClass));
                    return true;
                }
            }
        }
        return false;
    }

    protected final void a(Future future) {
        this.g = future;
    }

    public void k() {
        synchronized (this) {
            Object obj = this.h == 3 ? 1 : null;
        }
        if (obj != null && this.c != null) {
            this.c.run();
        }
    }

    public final <E extends AsyncOperation> E a(ac<S> acVar) {
        this.f = acVar;
        return this;
    }

    protected final void b(T t) {
        this.b.post(new a(this, t));
    }

    public final synchronized ab<S> l() {
        return this.i;
    }

    public final synchronized <E extends AsyncOperation> E c(ab<S> abVar) {
        this.i = abVar;
        return this;
    }

    public d m() {
        return null;
    }

    public final void n() {
        for (Pair pair : this.a) {
            ((c) pair.first).b(this);
        }
    }

    public final void c(T t) {
        for (Pair pair : this.a) {
            ((c) pair.first).a(t, this);
        }
    }

    public final void a(AsyncService asyncService) {
        for (Pair pair : this.a) {
            ExecutionClass executionClass = (ExecutionClass) pair.second;
            if (executionClass == null || executionClass == ExecutionClass.MAIN_THREAD || asyncService == null) {
                ((c) pair.first).a(this);
            } else {
                asyncService.a(new b(this, pair));
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final S get() throws java.lang.InterruptedException {
        /*
        r2 = this;
        monitor-enter(r2);
    L_0x0001:
        r0 = r2.h;	 Catch:{ all -> 0x000a }
        r1 = 6;
        if (r0 == r1) goto L_0x000d;
    L_0x0006:
        r2.wait();	 Catch:{ all -> 0x000a }
        goto L_0x0001;
    L_0x000a:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x000a }
        throw r0;
    L_0x000d:
        monitor-exit(r2);	 Catch:{ all -> 0x000a }
        r0 = r2.i;
        if (r0 == 0) goto L_0x0019;
    L_0x0012:
        r0 = r2.i;
        r0 = r0.b();
    L_0x0018:
        return r0;
    L_0x0019:
        r0 = 0;
        goto L_0x0018;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.android.service.AsyncOperation.get():S");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final S get(long r8, java.util.concurrent.TimeUnit r10) throws java.lang.InterruptedException, java.util.concurrent.TimeoutException {
        /*
        r7 = this;
        r6 = 6;
        r2 = android.os.SystemClock.elapsedRealtime();
        r0 = r10.toMillis(r8);
        monitor-enter(r7);
    L_0x000a:
        r4 = 0;
        r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1));
        if (r4 <= 0) goto L_0x001e;
    L_0x0010:
        r4 = r7.h;	 Catch:{ all -> 0x002b }
        if (r4 == r6) goto L_0x001e;
    L_0x0014:
        r7.wait(r0);	 Catch:{ all -> 0x002b }
        r4 = android.os.SystemClock.elapsedRealtime();	 Catch:{ all -> 0x002b }
        r4 = r4 - r2;
        r0 = r0 - r4;
        goto L_0x000a;
    L_0x001e:
        r0 = r7.h;	 Catch:{ all -> 0x002b }
        if (r0 == r6) goto L_0x002e;
    L_0x0022:
        r0 = new java.util.concurrent.TimeoutException;	 Catch:{ all -> 0x002b }
        r1 = "Get async operation result timed out";
        r0.<init>(r1);	 Catch:{ all -> 0x002b }
        throw r0;	 Catch:{ all -> 0x002b }
    L_0x002b:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x002b }
        throw r0;
    L_0x002e:
        monitor-exit(r7);	 Catch:{ all -> 0x002b }
        r0 = r7.i;
        r0 = r0.b();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.android.service.AsyncOperation.get(long, java.util.concurrent.TimeUnit):S");
    }

    public synchronized boolean isCancelled() {
        return this.l;
    }

    public synchronized boolean isDone() {
        return this.h == 6;
    }

    public Runnable c(AsyncOperation asyncOperation) {
        return null;
    }

    public void b(ab<S> abVar) {
    }

    public void a(ab<S> abVar) {
    }

    protected String o() {
        return null;
    }

    protected final synchronized boolean p() {
        boolean z = true;
        synchronized (this) {
            if (this.h == 1) {
                this.h = 2;
                notifyAll();
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final synchronized boolean q() {
        /*
        r3 = this;
        r0 = 1;
        r1 = 0;
        monitor-enter(r3);
        r2 = r3.h;	 Catch:{ all -> 0x0024 }
        switch(r2) {
            case 2: goto L_0x0027;
            case 3: goto L_0x0027;
            case 4: goto L_0x0008;
            case 5: goto L_0x0032;
            default: goto L_0x0008;
        };	 Catch:{ all -> 0x0024 }
    L_0x0008:
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x0024 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0024 }
        r1.<init>();	 Catch:{ all -> 0x0024 }
        r2 = "Mark RUNNING. Invalid state: ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x0024 }
        r2 = r3.h;	 Catch:{ all -> 0x0024 }
        r1 = r1.append(r2);	 Catch:{ all -> 0x0024 }
        r1 = r1.toString();	 Catch:{ all -> 0x0024 }
        r0.<init>(r1);	 Catch:{ all -> 0x0024 }
        throw r0;	 Catch:{ all -> 0x0024 }
    L_0x0024:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
    L_0x0027:
        r2 = 4;
        r3.h = r2;	 Catch:{ all -> 0x0024 }
        r2 = r1;
    L_0x002b:
        r3.notifyAll();	 Catch:{ all -> 0x0024 }
        if (r2 != 0) goto L_0x0034;
    L_0x0030:
        monitor-exit(r3);
        return r0;
    L_0x0032:
        r2 = r0;
        goto L_0x002b;
    L_0x0034:
        r0 = r1;
        goto L_0x0030;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.android.service.AsyncOperation.q():boolean");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected final synchronized boolean a(com.twitter.internal.android.service.m<S> r4) {
        /*
        r3 = this;
        r0 = 1;
        r1 = 0;
        monitor-enter(r3);
        r2 = r3.h;	 Catch:{ all -> 0x0024 }
        switch(r2) {
            case 4: goto L_0x0027;
            case 5: goto L_0x0034;
            default: goto L_0x0008;
        };	 Catch:{ all -> 0x0024 }
    L_0x0008:
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x0024 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0024 }
        r1.<init>();	 Catch:{ all -> 0x0024 }
        r2 = "Mark RETRY_SCHEDULED. Invalid state: ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x0024 }
        r2 = r3.h;	 Catch:{ all -> 0x0024 }
        r1 = r1.append(r2);	 Catch:{ all -> 0x0024 }
        r1 = r1.toString();	 Catch:{ all -> 0x0024 }
        r0.<init>(r1);	 Catch:{ all -> 0x0024 }
        throw r0;	 Catch:{ all -> 0x0024 }
    L_0x0024:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
    L_0x0027:
        r3.c = r4;	 Catch:{ all -> 0x0024 }
        r2 = 3;
        r3.h = r2;	 Catch:{ all -> 0x0024 }
        r2 = r1;
    L_0x002d:
        r3.notifyAll();	 Catch:{ all -> 0x0024 }
        if (r2 != 0) goto L_0x0036;
    L_0x0032:
        monitor-exit(r3);
        return r0;
    L_0x0034:
        r2 = r0;
        goto L_0x002d;
    L_0x0036:
        r0 = r1;
        goto L_0x0032;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.android.service.AsyncOperation.a(com.twitter.internal.android.service.m):boolean");
    }

    protected final synchronized void r() {
        switch (this.h) {
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                this.h = 6;
                notifyAll();
                break;
            default:
                throw new IllegalStateException("Mark DONE. Invalid state: " + this.h);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean cancel(boolean r4) {
        /*
        r3 = this;
        r0 = 0;
        r1 = 1;
        monitor-enter(r3);
        r2 = r3.h;	 Catch:{ all -> 0x0022 }
        switch(r2) {
            case 2: goto L_0x001e;
            case 3: goto L_0x0032;
            case 4: goto L_0x0025;
            default: goto L_0x0008;
        };	 Catch:{ all -> 0x0022 }
    L_0x0008:
        r1 = r0;
    L_0x0009:
        if (r1 == 0) goto L_0x000e;
    L_0x000b:
        r2 = 1;
        r3.l = r2;	 Catch:{ all -> 0x0022 }
    L_0x000e:
        r3.notifyAll();	 Catch:{ all -> 0x0022 }
        monitor-exit(r3);	 Catch:{ all -> 0x0022 }
        if (r0 == 0) goto L_0x001d;
    L_0x0014:
        r0 = r3.c;
        if (r0 == 0) goto L_0x001d;
    L_0x0018:
        r0 = r3.c;
        r0.run();
    L_0x001d:
        return r1;
    L_0x001e:
        r2 = 5;
        r3.h = r2;	 Catch:{ all -> 0x0022 }
        goto L_0x0009;
    L_0x0022:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0022 }
        throw r0;
    L_0x0025:
        r2 = r3.g;	 Catch:{ all -> 0x0022 }
        if (r2 == 0) goto L_0x002e;
    L_0x0029:
        r2 = r3.g;	 Catch:{ all -> 0x0022 }
        r2.cancel(r4);	 Catch:{ all -> 0x0022 }
    L_0x002e:
        r2 = 5;
        r3.h = r2;	 Catch:{ all -> 0x0022 }
        goto L_0x0009;
    L_0x0032:
        r0 = 5;
        r3.h = r0;	 Catch:{ all -> 0x0022 }
        r0 = r1;
        goto L_0x0009;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.android.service.AsyncOperation.cancel(boolean):boolean");
    }

    public final boolean a(u uVar, ab abVar) {
        boolean z;
        synchronized (this) {
            if (this.h == 3) {
                z = true;
            } else {
                z = false;
            }
        }
        if (z && this.f != null && this.f.a(uVar, abVar)) {
            return true;
        }
        return false;
    }
}
