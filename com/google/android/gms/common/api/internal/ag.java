package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.w;

public interface ag {
    <A extends h, R extends w, T extends c<R, A>> T a(T t);

    void a();

    void a(int i);

    void a(Bundle bundle);

    void a(ConnectionResult connectionResult, a<?> aVar, int i);

    <A extends h, T extends c<? extends w, A>> T b(T t);

    boolean b();

    void c();
}
