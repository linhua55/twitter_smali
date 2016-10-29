package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;

public class e<T extends IInterface> extends ab<T> {
    private final j<T> a;

    public e(Context context, Looper looper, int i, q qVar, r rVar, w wVar, j jVar) {
        super(context, looper, i, wVar, qVar, rVar);
        this.a = jVar;
    }

    protected String a() {
        return this.a.a();
    }

    protected void a(int i, T t) {
        this.a.a(i, t);
    }

    protected T b(IBinder iBinder) {
        return this.a.a(iBinder);
    }

    protected String b() {
        return this.a.b();
    }
}
