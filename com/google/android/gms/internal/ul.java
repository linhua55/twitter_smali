package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.internal.w;

public class ul extends ab<up> {
    public ul(Context context, Looper looper, w wVar, q qVar, r rVar) {
        super(context, looper, 40, wVar, qVar, rVar);
    }

    protected up a(IBinder iBinder) {
        return uq.a(iBinder);
    }

    protected String a() {
        return "com.google.android.gms.clearcut.service.START";
    }

    public void a(um umVar, LogEventParcelable logEventParcelable) throws RemoteException {
        ((up) q()).a(umVar, logEventParcelable);
    }

    protected /* synthetic */ IInterface b(IBinder iBinder) {
        return a(iBinder);
    }

    protected String b() {
        return "com.google.android.gms.clearcut.internal.IClearcutLoggerService";
    }
}
