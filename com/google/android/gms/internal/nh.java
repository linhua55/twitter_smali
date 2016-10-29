package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bm;
import java.util.concurrent.atomic.AtomicBoolean;

@oi
public abstract class nh implements rj<Void>, tc {
    protected final np a;
    protected final Context b;
    protected final sz c;
    protected final pt d;
    protected AdResponseParcel e;
    protected final Object f;
    private Runnable g;
    private AtomicBoolean h;

    protected nh(Context context, pt ptVar, sz szVar, np npVar) {
        this.f = new Object();
        this.h = new AtomicBoolean(true);
        this.b = context;
        this.d = ptVar;
        this.e = this.d.b;
        this.c = szVar;
        this.a = npVar;
    }

    private ps b(int i) {
        AdRequestInfoParcel adRequestInfoParcel = this.d.a;
        return new ps(adRequestInfoParcel.c, this.c, this.e.d, i, this.e.f, this.e.j, this.e.l, this.e.k, adRequestInfoParcel.i, this.e.h, null, null, null, null, null, this.e.i, this.d.d, this.e.g, this.d.f, this.e.n, this.e.o, this.d.h, null, this.e.D, this.e.E, this.e.F, this.e.G);
    }

    public final Void a() {
        bm.b("Webview render task needs to be called on UI thread.");
        this.g = new ni(this);
        qw.a.postDelayed(this.g, ((Long) cj.ay.c()).longValue());
        b();
        return null;
    }

    protected void a(int i) {
        if (i != -2) {
            this.e = new AdResponseParcel(i, this.e.k);
        }
        this.c.e();
        this.a.b(b(i));
    }

    public void a(sz szVar, boolean z) {
        b.a("WebView finished loading.");
        if (this.h.getAndSet(false)) {
            a(z ? c() : -1);
            qw.a.removeCallbacks(this.g);
        }
    }

    protected abstract void b();

    protected int c() {
        return -2;
    }

    public void d() {
        if (this.h.getAndSet(false)) {
            this.c.stopLoading();
            ar.g().a(this.c);
            a(-1);
            qw.a.removeCallbacks(this.g);
        }
    }

    public /* synthetic */ Object e() {
        return a();
    }
}
