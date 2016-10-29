package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import com.google.android.gms.common.api.ab;
import java.lang.ref.WeakReference;

class ac implements DeathRecipient, ae {
    private final WeakReference<af<?>> a;
    private final WeakReference<ab> b;
    private final WeakReference<IBinder> c;

    private ac(af afVar, ab abVar, IBinder iBinder) {
        this.b = new WeakReference(abVar);
        this.a = new WeakReference(afVar);
        this.c = new WeakReference(iBinder);
    }

    private void a() {
        af afVar = (af) this.a.get();
        ab abVar = (ab) this.b.get();
        if (!(abVar == null || afVar == null)) {
            abVar.a(afVar.a().intValue());
        }
        IBinder iBinder = (IBinder) this.c.get();
        if (this.c != null) {
            iBinder.unlinkToDeath(this, 0);
        }
    }

    public void a(af<?> afVar) {
        a();
    }

    public void binderDied() {
        a();
    }
}
