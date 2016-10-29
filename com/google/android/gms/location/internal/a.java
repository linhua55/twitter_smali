package com.google.android.gms.location.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.internal.w;

public class a extends ab<r> {
    protected final af<r> a;
    private final String e;

    public a(Context context, Looper looper, q qVar, r rVar, String str, w wVar) {
        super(context, looper, 23, wVar, qVar, rVar);
        this.a = new b(this);
        this.e = str;
    }

    protected r a(IBinder iBinder) {
        return s.a(iBinder);
    }

    protected String a() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    protected /* synthetic */ IInterface b(IBinder iBinder) {
        return a(iBinder);
    }

    protected String b() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    protected Bundle o() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.e);
        return bundle;
    }
}
