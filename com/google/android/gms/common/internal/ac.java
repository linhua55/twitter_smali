package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.support.annotation.BinderThread;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ab.com/google/android/gms/common/internal/ae;

abstract class ac extends com/google/android/gms/common/internal/ae<Boolean> {
    public final int a;
    public final Bundle b;
    final /* synthetic */ ab c;

    @BinderThread
    protected ac(ab abVar, int i, Bundle bundle) {
        this.c = abVar;
        super(abVar, Boolean.valueOf(true));
        this.a = i;
        this.b = bundle;
    }

    protected abstract void a(ConnectionResult connectionResult);

    protected void a(Boolean bool) {
        PendingIntent pendingIntent = null;
        if (bool == null) {
            this.c.b(1, null);
            return;
        }
        switch (this.a) {
            case Util.TYPE_DASH /*0*/:
                if (!a()) {
                    this.c.b(1, null);
                    a(new ConnectionResult(8, null));
                }
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                this.c.b(1, null);
                throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
            default:
                this.c.b(1, null);
                if (this.b != null) {
                    pendingIntent = (PendingIntent) this.b.getParcelable("pendingIntent");
                }
                a(new ConnectionResult(this.a, pendingIntent));
        }
    }

    protected /* synthetic */ void a(Object obj) {
        a((Boolean) obj);
    }

    protected abstract boolean a();

    protected void b() {
    }
}
