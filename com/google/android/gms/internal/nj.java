package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.request.AdResponseParcel;

@oi
public class nj implements Runnable {
    protected final sz a;
    protected boolean b;
    protected boolean c;
    private final Handler d;
    private final long e;
    private long f;
    private tc g;
    private final int h;
    private final int i;

    public nj(tc tcVar, sz szVar, int i, int i2) {
        this(tcVar, szVar, i, i2, 200, 50);
    }

    public nj(tc tcVar, sz szVar, int i, int i2, long j, long j2) {
        this.e = j;
        this.f = j2;
        this.d = new Handler(Looper.getMainLooper());
        this.a = szVar;
        this.g = tcVar;
        this.b = false;
        this.c = false;
        this.h = i2;
        this.i = i;
    }

    static /* synthetic */ long c(nj njVar) {
        long j = njVar.f - 1;
        njVar.f = j;
        return j;
    }

    public void a() {
        this.d.postDelayed(this, this.e);
    }

    public void a(AdResponseParcel adResponseParcel) {
        a(adResponseParcel, new tw(this, this.a, adResponseParcel.q));
    }

    public void a(AdResponseParcel adResponseParcel, tw twVar) {
        this.a.setWebViewClient(twVar);
        this.a.loadDataWithBaseURL(TextUtils.isEmpty(adResponseParcel.b) ? null : ar.e().a(adResponseParcel.b), adResponseParcel.c, "text/html", "UTF-8", null);
    }

    public synchronized void b() {
        this.b = true;
    }

    public synchronized boolean c() {
        return this.b;
    }

    public boolean d() {
        return this.c;
    }

    public void run() {
        if (this.a == null || c()) {
            this.g.a(this.a, true);
        } else {
            new nk(this, this.a.a()).execute(new Void[0]);
        }
    }
}
