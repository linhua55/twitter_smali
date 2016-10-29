package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.ab;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.oi;

@oi
public class p extends ab<u> {
    final int a;

    public p(Context context, Looper looper, q qVar, r rVar, int i) {
        super(context, looper, 8, w.a(context), qVar, rVar);
        this.a = i;
    }

    protected u a(IBinder iBinder) {
        return v.a(iBinder);
    }

    protected String a() {
        return "com.google.android.gms.ads.service.START";
    }

    protected /* synthetic */ IInterface b(IBinder iBinder) {
        return a(iBinder);
    }

    protected String b() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    public u c() throws DeadObjectException {
        return (u) super.q();
    }
}
