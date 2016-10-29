package com.google.android.gms.internal;

import android.content.Context;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.internal.zzgq.zza;
import com.twitter.android.mx;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import tv.periscope.chatman.api.WireMessage;

@oi
public class ns extends zzgq {
    protected ju g;
    private kd h;
    private jm i;
    private jo j;
    private final cy k;
    private final sz l;
    private boolean m;

    ns(Context context, pt ptVar, kd kdVar, np npVar, cy cyVar, sz szVar) {
        super(context, ptVar, npVar);
        this.h = kdVar;
        this.j = ptVar.c;
        this.k = cyVar;
        this.l = szVar;
    }

    private void c() throws zza {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        qw.a.post(new nt(this, countDownLatch));
        try {
            countDownLatch.await(10, TimeUnit.SECONDS);
            synchronized (this.d) {
                if (!this.m) {
                    throw new zza("View could not be prepared", 0);
                } else if (this.l.r()) {
                    throw new zza("Assets not loaded, web view is destroyed", 0);
                }
            }
        } catch (InterruptedException e) {
            throw new zza("Interrupted while waiting for latch : " + e, 0);
        }
    }

    protected ps a(int i) {
        AdRequestInfoParcel adRequestInfoParcel = this.e.a;
        return new ps(adRequestInfoParcel.c, this.l, this.f.d, i, this.f.f, this.f.j, this.f.l, this.f.k, adRequestInfoParcel.i, this.f.h, this.g != null ? this.g.b : null, this.g != null ? this.g.c : null, this.g != null ? this.g.d : AdMobAdapter.class.getName(), this.j, this.g != null ? this.g.e : null, this.f.i, this.e.d, this.f.g, this.e.f, this.f.n, this.f.o, this.e.h, null, this.f.D, this.f.E, this.f.F, this.f.G);
    }

    protected void a(long j) throws zza {
        synchronized (this.d) {
            this.i = b(j);
        }
        this.g = this.i.a(this.j.a);
        switch (this.g.a) {
            case mx.View_android_theme /*0*/:
                if (this.g.b != null && this.g.b.k != null) {
                    c();
                }
            case WireMessage.WIRE_CHAT /*1*/:
                throw new zza("No fill from any mediation ad networks.", 3);
            default:
                throw new zza("Unexpected mediation result: " + this.g.a, 0);
        }
    }

    jm b(long j) {
        if (this.j.j != -1) {
            return new jx(this.b, this.e.a, this.h, this.j, this.f.t, this.f.C, j, ((Long) cj.ay.c()).longValue(), 2);
        }
        return new ka(this.b, this.e.a, this.h, this.j, this.f.t, this.f.C, j, ((Long) cj.ay.c()).longValue(), this.k);
    }

    public void b() {
        synchronized (this.d) {
            super.b();
            if (this.i != null) {
                this.i.a();
            }
        }
    }
}
