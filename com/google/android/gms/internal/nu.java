package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.aj;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@oi
public class nu extends qb {
    private final np a;
    private final AdResponseParcel b;
    private final pt c;
    private final nw d;
    private final Object e;
    private Future<ps> f;

    public nu(Context context, aj ajVar, hz hzVar, pt ptVar, y yVar, np npVar) {
        this(ptVar, npVar, new nw(context, ajVar, hzVar, new rr(context), yVar, ptVar));
    }

    nu(pt ptVar, np npVar, nw nwVar) {
        this.e = new Object();
        this.c = ptVar;
        this.b = ptVar.b;
        this.a = npVar;
        this.d = nwVar;
    }

    private ps a(int i) {
        return new ps(this.c.a.c, null, null, i, null, null, this.b.l, this.b.k, this.c.a.i, false, null, null, null, null, null, this.b.i, this.c.d, this.b.g, this.c.f, this.b.n, this.b.o, this.c.h, null, null, null, null, this.c.b.G);
    }

    public void a() {
        ps psVar;
        int i;
        try {
            synchronized (this.e) {
                this.f = qq.a(this.d);
            }
            psVar = (ps) this.f.get(60000, TimeUnit.MILLISECONDS);
            i = -2;
        } catch (TimeoutException e) {
            b.d("Timed out waiting for native ad.");
            this.f.cancel(true);
            i = 2;
            psVar = null;
        } catch (ExecutionException e2) {
            i = 0;
            psVar = null;
        } catch (InterruptedException e3) {
            psVar = null;
            i = -1;
        } catch (CancellationException e4) {
            psVar = null;
            i = -1;
        }
        if (psVar == null) {
            psVar = a(i);
        }
        qw.a.post(new nv(this, psVar));
    }

    public void b() {
        synchronized (this.e) {
            if (this.f != null) {
                this.f.cancel(true);
            }
        }
    }
}
