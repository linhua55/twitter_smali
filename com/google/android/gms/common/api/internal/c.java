package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.w;
import com.google.android.gms.common.internal.bm;
import java.util.concurrent.atomic.AtomicReference;

public abstract class c<R extends w, A extends h> extends e<R> implements af<A>, d<R> {
    private final i<A> b;
    private AtomicReference<ae> c;

    protected c(i<A> iVar, n nVar) {
        super((n) bm.a(nVar, "GoogleApiClient must not be null"));
        this.c = new AtomicReference();
        this.b = (i) bm.a(iVar);
    }

    private void a(RemoteException remoteException) {
        a(new Status(8, remoteException.getLocalizedMessage(), null));
    }

    public final void a(Status status) {
        bm.b(!status.e(), "Failed result must not be success");
        a(c(status));
    }

    public final void a(A a) throws DeadObjectException {
        try {
            b(a);
        } catch (RemoteException e) {
            a(e);
            throw e;
        } catch (RemoteException e2) {
            a(e2);
        }
    }

    public void a(ae aeVar) {
        this.c.set(aeVar);
    }

    public /* synthetic */ void a(Object obj) {
        super.a((w) obj);
    }

    public final i<A> b() {
        return this.b;
    }

    protected abstract void b(A a) throws RemoteException;

    public void c() {
        a(null);
    }

    protected void d() {
        ae aeVar = (ae) this.c.getAndSet(null);
        if (aeVar != null) {
            aeVar.a(this);
        }
    }
}
