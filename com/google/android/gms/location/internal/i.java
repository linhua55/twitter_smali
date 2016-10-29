package com.google.android.gms.location.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;

class i extends m {
    private final d<Status> a;

    public i(d<Status> dVar) {
        this.a = dVar;
    }

    public void a(FusedLocationProviderResult fusedLocationProviderResult) {
        this.a.a(fusedLocationProviderResult.a());
    }
}
