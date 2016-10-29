package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;

class v implements q, r {
    final /* synthetic */ n a;

    private v(n nVar) {
        this.a = nVar;
    }

    public void a(int i) {
    }

    public void a(Bundle bundle) {
        this.a.k.a(new t(this.a));
    }

    public void a(@NonNull ConnectionResult connectionResult) {
        this.a.b.lock();
        try {
            if (this.a.b(connectionResult)) {
                this.a.h();
                this.a.e();
            } else {
                this.a.c(connectionResult);
            }
            this.a.b.unlock();
        } catch (Throwable th) {
            this.a.b.unlock();
        }
    }
}
