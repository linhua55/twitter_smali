package com.google.android.gms.common.api.internal;

import java.lang.ref.WeakReference;

class ad extends al {
    private WeakReference<y> a;

    ad(y yVar) {
        this.a = new WeakReference(yVar);
    }

    public void a() {
        y yVar = (y) this.a.get();
        if (yVar != null) {
            yVar.n();
        }
    }
}
