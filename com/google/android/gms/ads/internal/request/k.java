package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.rj;
import com.google.android.gms.internal.so;

@oi
public abstract class k implements i, rj<Void> {
    private final so<AdRequestInfoParcel> a;
    private final i b;
    private final Object c;

    public k(so<AdRequestInfoParcel> soVar, i iVar) {
        this.c = new Object();
        this.a = soVar;
        this.b = iVar;
    }

    public abstract void a();

    public void a(AdResponseParcel adResponseParcel) {
        synchronized (this.c) {
            this.b.a(adResponseParcel);
            a();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    boolean a(com.google.android.gms.ads.internal.request.u r5, com.google.android.gms.ads.internal.request.AdRequestInfoParcel r6) {
        /*
        r4 = this;
        r1 = 0;
        r0 = 1;
        r2 = new com.google.android.gms.ads.internal.request.r;	 Catch:{ RemoteException -> 0x000b, NullPointerException -> 0x0025, SecurityException -> 0x0034, Throwable -> 0x0043 }
        r2.<init>(r4);	 Catch:{ RemoteException -> 0x000b, NullPointerException -> 0x0025, SecurityException -> 0x0034, Throwable -> 0x0043 }
        r5.a(r6, r2);	 Catch:{ RemoteException -> 0x000b, NullPointerException -> 0x0025, SecurityException -> 0x0034, Throwable -> 0x0043 }
    L_0x000a:
        return r0;
    L_0x000b:
        r2 = move-exception;
        r3 = "Could not fetch ad response from ad request service.";
        com.google.android.gms.ads.internal.util.client.b.d(r3, r2);
        r3 = com.google.android.gms.ads.internal.ar.h();
        r3.a(r2, r0);
    L_0x0019:
        r0 = r4.b;
        r2 = new com.google.android.gms.ads.internal.request.AdResponseParcel;
        r2.<init>(r1);
        r0.a(r2);
        r0 = r1;
        goto L_0x000a;
    L_0x0025:
        r2 = move-exception;
        r3 = "Could not fetch ad response from ad request service due to an Exception.";
        com.google.android.gms.ads.internal.util.client.b.d(r3, r2);
        r3 = com.google.android.gms.ads.internal.ar.h();
        r3.a(r2, r0);
        goto L_0x0019;
    L_0x0034:
        r2 = move-exception;
        r3 = "Could not fetch ad response from ad request service due to an Exception.";
        com.google.android.gms.ads.internal.util.client.b.d(r3, r2);
        r3 = com.google.android.gms.ads.internal.ar.h();
        r3.a(r2, r0);
        goto L_0x0019;
    L_0x0043:
        r2 = move-exception;
        r3 = "Could not fetch ad response from ad request service due to an Exception.";
        com.google.android.gms.ads.internal.util.client.b.d(r3, r2);
        r3 = com.google.android.gms.ads.internal.ar.h();
        r3.a(r2, r0);
        goto L_0x0019;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.request.k.a(com.google.android.gms.ads.internal.request.u, com.google.android.gms.ads.internal.request.AdRequestInfoParcel):boolean");
    }

    public abstract u b();

    public Void c() {
        u b = b();
        if (b == null) {
            this.b.a(new AdResponseParcel(0));
            a();
        } else {
            this.a.a(new l(this, b), new m(this));
        }
        return null;
    }

    public void d() {
        a();
    }

    public /* synthetic */ Object e() {
        return c();
    }
}
