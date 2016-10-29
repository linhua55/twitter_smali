package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.bm;

public class g implements q, r {
    public final a<?> a;
    private final int b;
    private ah c;

    public g(a<?> aVar, int i) {
        this.a = aVar;
        this.b = i;
    }

    private void a() {
        bm.a(this.c, "Callbacks must be attached to a GoogleApiClient instance before connecting the client.");
    }

    public void a(int i) {
        a();
        this.c.a(i);
    }

    public void a(@Nullable Bundle bundle) {
        a();
        this.c.a(bundle);
    }

    public void a(@NonNull ConnectionResult connectionResult) {
        a();
        this.c.a(connectionResult, this.a, this.b);
    }

    public void a(ah ahVar) {
        this.c = ahVar;
    }
}
