package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.oi;
import java.lang.ref.WeakReference;

@oi
public final class r extends y {
    private final WeakReference<i> a;

    public r(i iVar) {
        this.a = new WeakReference(iVar);
    }

    public void a(AdResponseParcel adResponseParcel) {
        i iVar = (i) this.a.get();
        if (iVar != null) {
            iVar.a(adResponseParcel);
        }
    }
}
