package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.w;

final class ui extends uh<Status> {
    final /* synthetic */ uc b;
    private final LogEventParcelable c;

    ui(uc ucVar, LogEventParcelable logEventParcelable, n nVar) {
        this.b = ucVar;
        super(nVar);
        this.c = logEventParcelable;
    }

    protected void a(ul ulVar) throws RemoteException {
        um ujVar = new uj(this);
        try {
            uc.b(this.c);
            ulVar.a(ujVar, this.c);
        } catch (Throwable th) {
            Log.e("ClearcutLoggerApiImpl", "MessageNanoProducer " + this.c.f.toString() + " threw: " + th.toString());
        }
    }

    protected /* synthetic */ void b(h hVar) throws RemoteException {
        a((ul) hVar);
    }

    protected /* synthetic */ w c(Status status) {
        return d(status);
    }

    protected Status d(Status status) {
        return status;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ui)) {
            return false;
        }
        return this.c.equals(((ui) obj).c);
    }

    public String toString() {
        return "MethodImpl(" + this.c + ")";
    }
}
