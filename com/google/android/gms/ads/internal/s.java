package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.aa;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qq;
import com.google.android.gms.internal.t;
import com.google.android.gms.internal.v;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@oi
class s implements t, Runnable {
    CountDownLatch a;
    private final List<Object[]> b;
    private final AtomicReference<t> c;
    private zzs d;

    public s(zzs com_google_android_gms_ads_internal_zzs) {
        this.b = new Vector();
        this.c = new AtomicReference();
        this.a = new CountDownLatch(1);
        this.d = com_google_android_gms_ads_internal_zzs;
        if (aa.a().b()) {
            qq.a((Runnable) this);
        } else {
            run();
        }
    }

    private Context b(Context context) {
        if (!((Boolean) cj.m.c()).booleanValue()) {
            return context;
        }
        Context applicationContext = context.getApplicationContext();
        return applicationContext != null ? applicationContext : context;
    }

    private void b() {
        if (!this.b.isEmpty()) {
            for (Object[] objArr : this.b) {
                if (objArr.length == 1) {
                    ((t) this.c.get()).a((MotionEvent) objArr[0]);
                } else if (objArr.length == 3) {
                    ((t) this.c.get()).a(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
                }
            }
            this.b.clear();
        }
    }

    protected t a(String str, Context context, boolean z) {
        return v.a(str, context, z);
    }

    public String a(Context context) {
        if (a()) {
            t tVar = (t) this.c.get();
            if (tVar != null) {
                b();
                return tVar.a(b(context));
            }
        }
        return BuildConfig.VERSION_NAME;
    }

    public String a(Context context, String str) {
        if (a()) {
            t tVar = (t) this.c.get();
            if (tVar != null) {
                b();
                return tVar.a(b(context), str);
            }
        }
        return BuildConfig.VERSION_NAME;
    }

    public void a(int i, int i2, int i3) {
        t tVar = (t) this.c.get();
        if (tVar != null) {
            b();
            tVar.a(i, i2, i3);
            return;
        }
        this.b.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    public void a(MotionEvent motionEvent) {
        t tVar = (t) this.c.get();
        if (tVar != null) {
            b();
            tVar.a(motionEvent);
            return;
        }
        this.b.add(new Object[]{motionEvent});
    }

    protected void a(t tVar) {
        this.c.set(tVar);
    }

    protected boolean a() {
        try {
            this.a.await();
            return true;
        } catch (Throwable e) {
            b.d("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    public void run() {
        try {
            boolean z = !((Boolean) cj.y.c()).booleanValue() || this.d.e.e;
            a(a(this.d.e.b, b(this.d.c), z));
        } finally {
            this.a.countDown();
            this.d = null;
        }
    }
}
