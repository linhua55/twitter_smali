package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

class i implements aq {
    final /* synthetic */ h a;

    i(h hVar) {
        this.a = hVar;
    }

    public void a(int i, boolean z) {
        this.a.m.lock();
        try {
            if (this.a.l || this.a.k == null || !this.a.k.b()) {
                this.a.l = false;
                this.a.a(i, z);
                return;
            }
            this.a.l = true;
            this.a.e.a(i);
            this.a.m.unlock();
        } finally {
            this.a.m.unlock();
        }
    }

    public void a(@Nullable Bundle bundle) {
        this.a.m.lock();
        try {
            this.a.a(bundle);
            this.a.j = ConnectionResult.a;
            this.a.h();
        } finally {
            this.a.m.unlock();
        }
    }

    public void a(@NonNull ConnectionResult connectionResult) {
        this.a.m.lock();
        try {
            this.a.j = connectionResult;
            this.a.h();
        } finally {
            this.a.m.unlock();
        }
    }
}
