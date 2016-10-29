package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.s;
import com.google.android.gms.common.internal.bm;
import java.lang.ref.WeakReference;

class p implements s {
    private final WeakReference<n> a;
    private final a<?> b;
    private final int c;

    public p(n nVar, a<?> aVar, int i) {
        this.a = new WeakReference(nVar);
        this.b = aVar;
        this.c = i;
    }

    public void a(@NonNull ConnectionResult connectionResult) {
        boolean z = false;
        n nVar = (n) this.a.get();
        if (nVar != null) {
            if (Looper.myLooper() == nVar.a.g.a()) {
                z = true;
            }
            bm.a(z, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            nVar.b.lock();
            try {
                if (nVar.b(0)) {
                    if (!connectionResult.b()) {
                        nVar.b(connectionResult, this.b, this.c);
                    }
                    if (nVar.d()) {
                        nVar.e();
                    }
                    nVar.b.unlock();
                }
            } finally {
                nVar.b.unlock();
            }
        }
    }
}
