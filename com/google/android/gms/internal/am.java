package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.ads.internal.formats.h;
import java.lang.ref.WeakReference;

public class am implements be {
    private WeakReference<h> a;

    public am(h hVar) {
        this.a = new WeakReference(hVar);
    }

    public View a() {
        h hVar = (h) this.a.get();
        return hVar != null ? hVar.e() : null;
    }

    public boolean b() {
        return this.a.get() == null;
    }

    public be c() {
        return new an((h) this.a.get());
    }
}
