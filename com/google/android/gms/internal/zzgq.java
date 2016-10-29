package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;

@oi
public abstract class zzgq extends qb {
    protected final np a;
    protected final Context b;
    protected final Object c;
    protected final Object d;
    protected final pt e;
    protected AdResponseParcel f;

    protected zzgq(Context context, pt ptVar, np npVar) {
        super(true);
        this.c = new Object();
        this.d = new Object();
        this.b = context;
        this.e = ptVar;
        this.f = ptVar.b;
        this.a = npVar;
    }

    protected abstract ps a(int i);

    public void a() {
        int a;
        synchronized (this.c) {
            b.a("AdRendererBackgroundTask started.");
            int i = this.e.e;
            try {
                a(SystemClock.elapsedRealtime());
            } catch (zza e) {
                a = e.a();
                if (a == 3 || a == -1) {
                    b.c(e.getMessage());
                } else {
                    b.d(e.getMessage());
                }
                if (this.f == null) {
                    this.f = new AdResponseParcel(a);
                } else {
                    this.f = new AdResponseParcel(a, this.f.k);
                }
                qw.a.post(new nm(this));
                i = a;
            }
            qw.a.post(new nn(this, a(i)));
        }
    }

    protected abstract void a(long j) throws zza;

    protected void a(ps psVar) {
        this.a.b(psVar);
    }

    public void b() {
    }
}
