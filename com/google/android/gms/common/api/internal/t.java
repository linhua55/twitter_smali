package com.google.android.gms.common.api.internal;

import android.support.annotation.BinderThread;
import com.google.android.gms.signin.internal.SignInResponse;
import com.google.android.gms.signin.internal.b;
import java.lang.ref.WeakReference;

class t extends b {
    private final WeakReference<n> a;

    t(n nVar) {
        this.a = new WeakReference(nVar);
    }

    @BinderThread
    public void a(SignInResponse signInResponse) {
        n nVar = (n) this.a.get();
        if (nVar != null) {
            nVar.a.a(new u(this, nVar, nVar, signInResponse));
        }
    }
}
