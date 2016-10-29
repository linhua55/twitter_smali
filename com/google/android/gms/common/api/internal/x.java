package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.w;
import java.util.Collections;

public class x implements ag {
    private final ah a;

    public x(ah ahVar) {
        this.a = ahVar;
    }

    public <A extends h, R extends w, T extends c<R, A>> T a(T t) {
        this.a.g.a.add(t);
        return t;
    }

    public void a() {
        this.a.h();
        this.a.g.d = Collections.emptySet();
    }

    public void a(int i) {
    }

    public void a(Bundle bundle) {
    }

    public void a(ConnectionResult connectionResult, a<?> aVar, int i) {
    }

    public <A extends h, T extends c<? extends w, A>> T b(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    public boolean b() {
        return true;
    }

    public void c() {
        this.a.f();
    }
}
