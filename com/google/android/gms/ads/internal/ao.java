package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.qw;
import java.lang.ref.WeakReference;

@oi
public class ao {
    private final aq a;
    private final Runnable b;
    private AdRequestParcel c;
    private boolean d;
    private boolean e;
    private long f;

    public ao(b bVar) {
        this(bVar, new aq(qw.a));
    }

    ao(b bVar, aq aqVar) {
        this.d = false;
        this.e = false;
        this.f = 0;
        this.a = aqVar;
        this.b = new ap(this, new WeakReference(bVar));
    }

    public void a() {
        this.d = false;
        this.a.a(this.b);
    }

    public void a(AdRequestParcel adRequestParcel) {
        a(adRequestParcel, 60000);
    }

    public void a(AdRequestParcel adRequestParcel, long j) {
        if (this.d) {
            b.d("An ad refresh is already scheduled.");
            return;
        }
        this.c = adRequestParcel;
        this.d = true;
        this.f = j;
        if (!this.e) {
            b.c("Scheduling ad refresh " + j + " milliseconds from now.");
            this.a.a(this.b, j);
        }
    }

    public void b() {
        this.e = true;
        if (this.d) {
            this.a.a(this.b);
        }
    }

    public void c() {
        this.e = false;
        if (this.d) {
            this.d = false;
            a(this.c, this.f);
        }
    }

    public boolean d() {
        return this.d;
    }
}
