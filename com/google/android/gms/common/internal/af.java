package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.BinderThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;

public final class af extends ax {
    private ab a;
    private final int b;

    public af(@NonNull ab abVar, int i) {
        this.a = abVar;
        this.b = i;
    }

    private void a() {
        this.a = null;
    }

    @BinderThread
    public void a(int i, @Nullable Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @BinderThread
    public void a(int i, @NonNull IBinder iBinder, @Nullable Bundle bundle) {
        bm.a(this.a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.a.a(i, iBinder, bundle, this.b);
        a();
    }
}
