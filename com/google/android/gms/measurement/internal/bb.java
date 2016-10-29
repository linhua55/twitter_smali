package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.internal.w;

public class bb extends ab<ax> {
    public bb(Context context, Looper looper, w wVar, q qVar, r rVar) {
        super(context, looper, 93, wVar, qVar, rVar);
    }

    public ax a(IBinder iBinder) {
        return ay.a(iBinder);
    }

    protected String a() {
        return "com.google.android.gms.measurement.START";
    }

    public /* synthetic */ IInterface b(IBinder iBinder) {
        return a(iBinder);
    }

    protected String b() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }
}
