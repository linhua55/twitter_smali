package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.clearcut.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.t;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class uc implements g {
    private static final Object a;
    private static final uk b;
    private static final long c;
    private final vj d;
    private final uf e;
    private final Object f;
    private long g;
    private final long h;
    private ScheduledFuture<?> i;
    private n j;
    private final Runnable k;

    static {
        a = new Object();
        b = new uk();
        c = TimeUnit.MILLISECONDS.convert(2, TimeUnit.MINUTES);
    }

    public uc() {
        this(new vl(), c, new ug());
    }

    public uc(vj vjVar, long j, uf ufVar) {
        this.f = new Object();
        this.g = 0;
        this.i = null;
        this.j = null;
        this.k = new ud(this);
        this.d = vjVar;
        this.h = j;
        this.e = ufVar;
    }

    private ui b(n nVar, LogEventParcelable logEventParcelable) {
        b.a();
        ui uiVar = new ui(this, logEventParcelable, nVar);
        uiVar.a(new ue(this));
        return uiVar;
    }

    private static void b(LogEventParcelable logEventParcelable) {
        if (logEventParcelable.f != null && logEventParcelable.e.k.length == 0) {
            logEventParcelable.e.k = logEventParcelable.f.a();
        }
        if (logEventParcelable.g != null && logEventParcelable.e.r.length == 0) {
            logEventParcelable.e.r = logEventParcelable.g.a();
        }
        logEventParcelable.c = xs.a(logEventParcelable.e);
    }

    public t<Status> a(n nVar, LogEventParcelable logEventParcelable) {
        b(logEventParcelable);
        return nVar.a(b(nVar, logEventParcelable));
    }

    public boolean a(n nVar, long j, TimeUnit timeUnit) {
        try {
            return b.a(j, timeUnit);
        } catch (InterruptedException e) {
            Log.e("ClearcutLoggerApiImpl", "flush interrupted");
            Thread.currentThread().interrupt();
            return false;
        }
    }
}
