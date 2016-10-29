package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

class j implements aq {
    final /* synthetic */ h a;

    j(h hVar) {
        this.a = hVar;
    }

    public void a(int i, boolean z) {
        this.a.m.lock();
        try {
            if (this.a.l) {
                this.a.l = false;
                this.a.a(i, z);
                return;
            }
            r0.l = r1;
            this.a.d.a(i);
            this.a.m.unlock();
        } finally {
            this.a.m.unlock();
        }
    }

    public void a(@Nullable Bundle bundle) {
        this.a.m.lock();
        try {
            this.a.k = ConnectionResult.a;
            this.a.h();
        } finally {
            this.a.m.unlock();
        }
    }

    public void a(@NonNull ConnectionResult connectionResult) {
        this.a.m.lock();
        try {
            this.a.k = connectionResult;
            this.a.h();
        } finally {
            this.a.m.unlock();
        }
    }
}
