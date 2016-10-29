package com.twitter.internal.android.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.Looper;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.util.s;
import defpackage.cfb;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public class AsyncService extends Service {
    private static final String a;
    private final s b;
    private final IBinder c;
    private final Map<String, i> d;
    private final p e;
    private final Set<m> f;

    static {
        a = AsyncService.class.getSimpleName();
    }

    public AsyncService() {
        this.c = new n(this);
        this.d = new ConcurrentHashMap();
        this.e = p.a();
        this.b = new s(Looper.getMainLooper());
        this.f = Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public AsyncService(p pVar, s sVar) {
        this.c = new n(this);
        this.d = new ConcurrentHashMap();
        this.e = pVar;
        this.b = sVar;
        this.f = Collections.newSetFromMap(new ConcurrentHashMap());
    }

    public IBinder onBind(Intent intent) {
        return this.c;
    }

    public void onDestroy() {
        super.onDestroy();
        this.e.b();
        this.f.clear();
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        throw new UnsupportedOperationException("By default, AsyncService is strictly a bound service and does not support starting with Context.startService()");
    }

    public <T, S> void a(AsyncOperation<T, S> asyncOperation) {
        if (asyncOperation != null && asyncOperation.p()) {
            i iVar = new i(this, asyncOperation);
            asyncOperation.n();
            iVar.a(new e(this, asyncOperation.c(iVar.f), asyncOperation, iVar));
        }
    }

    <S> void a(i<S> iVar) {
        AsyncOperation b = iVar.e;
        ExecutorService a = this.e.a(b.j());
        d m = b.m();
        if (m != null) {
            m.a("blocking");
        }
        b.a(a(a, iVar));
    }

    private Future<?> a(ExecutorService executorService, Runnable runnable) {
        try {
            return executorService.submit(runnable);
        } catch (Throwable e) {
            cfb.b(a, "Attempt to submit a job during shutdown", e);
            return null;
        }
    }

    public void a(u uVar) {
        a(this.e.a(ExecutionClass.LOCAL_DISK), new k(uVar, this.f));
    }
}
