package com.google.android.gms.common.internal;

import android.support.annotation.BinderThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ab$com.google.android.gms.common.internal.ac;

public final class aj extends ac {
    final /* synthetic */ ab e;

    @BinderThread
    public aj(ab abVar, int i) {
        this.e = abVar;
        super(abVar, i, null);
    }

    protected void a(ConnectionResult connectionResult) {
        this.e.q.a(connectionResult);
        this.e.a(connectionResult);
    }

    protected boolean a() {
        this.e.q.a(ConnectionResult.a);
        return true;
    }
}
